# Signed Commits

This exercise walks you through setting up signing of commits and how to verify them.
We use GitHub as the remote repository, but the process is the same for GitLab.
The format is a bit different from the other exercises, since it is more of a guide than a kata.
There is therefore no setup script.

There are two ways to sign commits:

- **SSH signing** (Git 2.34 or newer). The simplest option, and you may already have an SSH key. **Recommended.**
- **GPG signing.** The classic option, with more moving parts that differ per operating system.

Pick one and follow its section. Then continue with [Verify commits](#verify-commits) and the [exercise](#exercise).

> :warning: The `git config --global` commands below change your real Git configuration.
> On a shared or borrowed machine, drop `--global` and run the commands inside the repository you create in the [Exercise](#exercise) instead.

Check your Git version first:

```bash
git --version   # SSH signing needs 2.34 or newer
```

## Option A: SSH signing (recommended)

### 1. Get an SSH key

If you already have a key (e.g. `~/.ssh/id_ed25519.pub`), you can reuse it, or create a dedicated one:

```bash
ssh-keygen -t ed25519 -C "your-email@example.com" -f ~/.ssh/id_ed25519_signing
```

On Windows, run this in Git Bash or PowerShell (OpenSSH is built into Windows 10/11). `~` is your home directory in both.

### 2. Tell Git to sign with it

```bash
git config --global gpg.format ssh
git config --global user.signingkey ~/.ssh/id_ed25519_signing.pub
git config --global commit.gpgsign true    # sign every commit automatically
```

Before signing commits, load the matching private key into a running `ssh-agent`, even if it has no passphrase:

```bash
ssh-add ~/.ssh/id_ed25519_signing
```

On macOS, use `ssh-add --apple-use-keychain ~/.ssh/id_ed25519_signing` to store its passphrase in the keychain.

### 3. Add the key to GitHub as a *signing* key

- Go to <https://github.com/settings/keys> and click **New SSH key**.
- Set **Key type** to **Signing Key** (a key added only as an *Authentication Key* will not make commits verified).
- Paste the contents of the `.pub` file. To copy it to the clipboard:

| OS      | Command                                           |
| ------- | ------------------------------------------------- |
| macOS   | `pbcopy < ~/.ssh/id_ed25519_signing.pub`          |
| Linux   | `xclip -selection clipboard < ~/.ssh/id_ed25519_signing.pub` (or `wl-copy < ...` on Wayland) |
| Windows (PowerShell) | `Get-Content $HOME\.ssh\id_ed25519_signing.pub \| Set-Clipboard` |
| Git Bash | `clip < ~/.ssh/id_ed25519_signing.pub`           |

### 4. (Optional) Verify signatures locally

GitHub verifies signatures for you, but for `git log --show-signature` to say "Good signature" locally,
Git needs a list of trusted keys:

```bash
echo "your-email@example.com $(cat ~/.ssh/id_ed25519_signing.pub)" >> ~/.config/git/allowed_signers
git config --global gpg.ssh.allowedSignersFile ~/.config/git/allowed_signers
```

(Create the folder `~/.config/git` first if it does not exist.)

## Option B: GPG signing

### 1. Install GPG

| OS      | Install                                                                                         |
| ------- | ----------------------------------------------------------------------------------------------- |
| Windows | [Gpg4win](https://gpg4win.org/download.html), or `choco install gpg4win` / `winget install GnuPG.Gpg4win` |
| macOS   | `brew install gnupg pinentry-mac` (pinentry-mac gives you a GUI passphrase prompt)               |
| Linux   | `sudo apt install gnupg` (Debian/Ubuntu), `sudo dnf install gnupg2` (Fedora)                     |

Check with `gpg --version`.

You can also follow the [GitHub step by step guide](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key)
or the [GitLab GPG guide](https://docs.gitlab.com/ee/user/project/repository/signed_commits/gpg.html).

### 2. Generate a key

> :bulb: Verify your email address on GitHub first. The email address in your GPG key must match
> an email address verified on your account **and** the `user.email` you commit with. To keep your address private,
> use your GitHub-provided `no-reply` address (see
> [Setting your commit email address](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address)).

```bash
gpg --full-generate-key
```

- Choose the default key type (currently ECC / ed25519; older GPG versions default to RSA, where you should pick 4096 bits).
- Choose an expiration you are comfortable with (or press Enter for no expiry).
- Enter your name and the email address described above.
- Choose a passphrase and store it somewhere safe.

### 3. Export the public key

```bash
gpg --list-secret-keys --keyid-format LONG
```

Find the ID in the line starting with `sec`. It is the hex string after the slash, e.g. `sec   ed25519/1A96FB9E811B9920`
(or `rsa4096/...` for an RSA key). Then print the public key:

```bash
gpg --armor --export <KEY_ID>
```

To copy it directly to the clipboard, pipe it to the command for your OS:
`| pbcopy` (macOS), `| xclip -selection clipboard` (Linux), `| clip` (Windows, Git Bash or cmd), `| Set-Clipboard` (PowerShell).

### 4. Add the key to your GitHub account

- Go to <https://github.com/settings/keys>.
- Click **New GPG key**, paste the key, and click **Add GPG key**.
- Confirm with your password / 2FA.

### 5. Configure Git

```bash
git config --global gpg.format openpgp
git config --global user.signingkey <KEY_ID>
git config --global commit.gpgsign true    # sign every commit automatically
```

Without `commit.gpgsign`, you sign individual commits with `git commit -S`.

### 6. OS specific gotchas

**macOS / Linux: "Inappropriate ioctl for device".** If `git commit` fails with

```
gpg: signing failed: Inappropriate ioctl for device
```

GPG cannot open a prompt for your passphrase. Add this to your `~/.zshrc` or `~/.bashrc` and open a new terminal:

```bash
export GPG_TTY=$(tty)
```

On macOS with a GUI prompt, also run:

```bash
echo "pinentry-program $(brew --prefix)/bin/pinentry-mac" >> ~/.gnupg/gpg-agent.conf
gpgconf --kill gpg-agent
```

**Windows: "No secret key".** If you have installed Gpg4win and see

```
gpg: skipped "5D882E3762132C82": No secret key
gpg: signing failed: No secret key
error: gpg failed to sign the data
fatal: failed to write commit object
```

Git for Windows uses its own bundled GPG, which keeps keys in a different place than Gpg4win. Tell Git to use Gpg4win's `gpg`:

In PowerShell:

```powershell
git config --global gpg.program $(Resolve-Path (Get-Command gpg | Select-Object -Expand Source) | Select-Object -Expand Path)
```

In Git Bash (assumes Gpg4win is installed on C:):

```bash
git config --global gpg.program "$(cygpath -w "$(which --all gpg | grep '/c/' | head -1)")"
```

(If you only have one GPG installed, you do not need this.)

### 7. Cache your passphrase

By default you are asked for the passphrase on every commit. `gpg-agent` can remember it for a while.

**All OSs** (Gpg4win, macOS, Linux): edit `gpg-agent.conf` and add (values are in seconds):

```conf
default-cache-ttl 7200
max-cache-ttl 7200
```

The file is at `~/.gnupg/gpg-agent.conf` on macOS and Linux, and `%APPDATA%\gnupg\gpg-agent.conf` on Windows.
Then restart the agent for the change to take effect:

```bash
gpgconf --kill gpg-agent
```

**Windows alternative, using Kleopatra:** Gpg4win installs the key manager Kleopatra.
Open **Settings** (Ctrl+Shift+,), go to **GnuPG System** -> **Private Keys**, and set
"Set maximum PIN cache lifetime to N seconds" (e.g. 7200 for two hours).

## Exercise

Do not rely on a pre-made repository. Make a fresh one, so you also see what happens before signing is configured.

```bash
mkdir signing-test && cd signing-test
git init
git config user.email "your-verified-email@example.com"   # must match your key / GitHub account
echo hello > hello.txt && git add hello.txt
```

1. Make a commit **without** signing: `git -c commit.gpgsign=false commit -m "unsigned"`.
2. Make a commit **with** signing: `git commit --allow-empty -S -m "signed"` (if you set `commit.gpgsign true` globally, use `git commit --allow-empty -m "signed"`).
3. Compare the two with `git log --show-signature` (see below). Which one has a signature?
4. Create a repository on GitHub, push both commits, and look at the commit list in the web UI.
   The signed commit has a green **Verified** badge, the unsigned one has none.
5. Try the usual failure: set `git config user.email someone-else@example.com`, then make another signed commit with `git commit --allow-empty -S -m "wrong email"` and push (or use `git commit --allow-empty -m "wrong email"` if automatic signing is enabled).
   With a GPG key whose email differs, the badge says **Unverified** (the commit is signed, but GitHub cannot match it to your account).
6. Sign an existing commit afterwards: `git commit --amend --no-edit -S`. What happened to the commit ID, and why?

## Verify commits

You can verify an existing commit with:

```bash
git log -1 --show-signature
```

For a good GPG signature, the output looks like this:

```
commit 3228dd25255256614678489e5ebc8d957d9b7556
gpg: Signature made Fri 16 Oct 13:04:51 2026 CEST
gpg:                using EDDSA key 317C7319C6A7B96DF5F561F31A96FB9E811B9920
gpg: Good signature from "Your Name <your-email@example.com>" [ultimate]
Author: Your Name <your-email@example.com>
Date:   Fri Oct 16 13:04:51 2026 +0200

    my commit message
```

For SSH signing it is a single line, `Good "git" signature for your-email@example.com with ED25519 key SHA256:...`
(or `No principal matched` / `gpg.ssh.allowedSignersFile needs to be configured` if you skipped step A4).

Two more ways to look:

```bash
git log --pretty="format:%h %G? %GS %s"   # %G? is G = good, B = bad, N = no signature, U = good but untrusted
git verify-commit HEAD
```

A handy alias for the first:

```bash
git config --global alias.v "log -1 --show-signature"
```

## Troubleshooting

| Symptom | Likely cause / fix |
| ------- | ------------------ |
| `gpg failed to sign the data` / `Inappropriate ioctl for device` | Set `GPG_TTY` (see GPG gotchas above), or fix pinentry. |
| `No secret key` | `user.signingkey` does not match a key in the GPG that Git uses. Check `gpg --list-secret-keys --keyid-format LONG`, and on Windows `gpg.program`. |
| `error: Load key ...: invalid format` / `Couldn't load public key` (SSH) | `user.signingkey` must point at the `.pub` file (or contain the literal public key). Check the path. |
| GitHub shows **Unverified** | The commit email does not match an email verified on your GitHub account, or the key is not uploaded (for SSH: uploaded as *Signing Key*). Also check that `user.email` is what you think with `git config user.email`. |
| Asked for passphrase on every commit | Configure the cache (GPG step 7), or use `ssh-agent` (SSH). |
| `git log --show-signature` shows nothing | The commit is not signed. Check `git config commit.gpgsign` and `git config gpg.format`. |

## Further information

- Blog on secure supply chain: <https://www.eficode.com/blog/mitigate-against-attacks-secure-your-software-delivery-chain>
- GitHub docs on [signing commits](https://docs.github.com/en/authentication/managing-commit-signature-verification/signing-commits) and [SSH commit signature verification](https://docs.github.com/en/authentication/managing-commit-signature-verification/about-commit-signature-verification#ssh-commit-signature-verification)
- Sigstore [gitsign](https://github.com/sigstore/gitsign) for "keyless" signing with short-lived certificates.
- An additional, informative, and entertaining view from Kelsey Hightower: <https://www.youtube.com/watch?v=VHcw4BUNsBc>
