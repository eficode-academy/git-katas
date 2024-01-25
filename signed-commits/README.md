### Signed Commits

This exercise walks you through the process of setting up GPG signing of commits, and how to verify them.
We will use Github as the remote repository, but the process is the same for Gitlab .
The format is a bit different than the other exercises, since it is more of a guide than a kata.
There are therefore no setup script.

## Setup:

On the workstation, you need to setup a tool that can produce GPG keys.

- Install a version of the GPG tool. For windows the best option is probably Gpg4win which can be 
installed from [GPG4win.org](https://gpg4win.org/download.html) or via Chocolatey (`choco install Gpg4win`)
- Basically just follow the [Github step by step guide](https://docs.github.com/en/authentication/managing-commit-signature-verification/generating-a-new-gpg-key): or [Gitlab help GPG guide](https://docs.gitlab.com/ee/user/project/repository/signed_commits/gpg.html) or follow the shorter/longer instructions below.


### Generate key


> :bulb: Note: Before generating a new GPG key, make sure you've verified your email address. If you haven't verified your email address, you won't be able to sign commits and tags with GPG. For more information, see "Verifying your email address." The email address used for your GPG key should match an email address in your git config. For more information, see [Setting your commit email address in Git](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/setting-your-commit-email-address#setting-your-commit-email-address-in-git)

- Open a terminal on your workstation.
- Enter `gpg --full-generate-key`.
- Select the default options when prompted for key type and key size.
- Set the expiration date you are comfortable with. If you don't want your key to expire, press Enter.

Note: When asked to enter your email address, ensure that you enter the verified email address for your GitHub account. To keep your email address private, use your GitHub-provided no-reply email address. For more information, see ["Verifying your email address."](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-personal-account-on-github/managing-email-preferences/verifying-your-email-address
)

- You will be asked for a Passphrase (remember to store this on a secured location in case you forgot it)

## Export key

This is well described in the Gitlab guide, but basically just run:

```bash
gpg --list-secret-keys --keyid-format LONG
# Then find the ID part in output, i.e. the HEX string after "sec   rsa4096/" (see guide)
gpg --armor --export <KEY_ID> 
# will print out the public key, which is what you need for Girhub.
# For convenience, just run:
gpg --armor --export <KEY_ID> | clip
# to send output directly to your clipboard (aka. copy/paste buffer)
```

## Add key to your Github account

- Go to your Github account settings and into the keys section https://github.com/settings/keys
- Click "New GPG key"
- Paste the key you copied from the previous step into the "Key" field.
- Click "Add GPG key"
- Confirm the action by entering your Github password/ 2FA code.

## Configure Git

Tell Git about your new key:

```bash
git config --global user.signingkey <KEY ID>
```

This will let you sign individual commits manually with `git commit -S`

If you want Git to automatically sign all your commit, which I suggest:

```bash
git config --global commit.gpgsign true
```

### Tell Git to use GPG4Win for signing

You may get the following error when running `git commit -S -m "<message>"`:

```
gpg: skipped "5D882E3762132C82": No secret key
gpg: signing failed: No secret key
error: gpg failed to sign the data
fatal: failed to write commit object
```

Git is by default using a bundled version of GPG. If you have installed GPG4win, your key will be
stored in a different location than the bundled GPG expects.
To remedy this, you have to tell Git which GPG to use.

In Powershell:

``` powershell
git config --global gpg.program $(Resolve-Path (Get-Command gpg | Select-Object -Expand Source) | Select-Object -Expand Path)
```

In Git Bash:

``` bash
git config --global gpg.program $(cygpath -w $(which --all gpg | grep "/c/"))  # Assumes that GPG4Win is installed on C:
```

## Caching Passphrase

In the default setup, every commit will query you for your passphrase for every commit, and since you have ofcourse used a very long safe passphrase, this quickly becomes very annoying.

It is possibly to set a "expiry" timeout for this, so it asks less frequently, and it seems there are at least two ways to do that.

### Method 1, using Kleopatra

If you have set up GPG using Gpg4win, it should also ahve installed a management utility called Kleopatra. (which you could probably also have used to create the key)

- Open Kleopatra
- Open Settings (ctrl + shit + ,)
- Go to "GnuPG System" -> "Private keys"
- In the field for "Set maximum PIN cache lifetime to N seconds" you can set your desired expiration, e.g. 7200 to cache for 2 hours.

### Method 2, using gpg-agent

E.g If you have used regular gpg instead of Gpg4Win.

Note: *Not tested. (If you do and it works, please remove this note)*

- Edit or create the file `%APPDATA%/gpg-agent.conf`
- Add the following (edit to your liking)

```conf
default-cache-ttl 72000
max-cache-ttl 72000
```

## Verifying commits

You can verify an existing commit with e.g.:

```bash
git log -1 --show-signature
```

![Example of git log with signature](git-log-show-signature.png)

I have added a git alias for this with:

```bash
git config --global alias.v log -1 --show-signature
```



### Further information

- Blog on secure supply chain: https://www.eficode.com/blog/mitigate-against-attacks-secure-your-software-delivery-chain
- An additional, informative, and entertaining view on these from Kelsey Hightower is available at: https://www.youtube.com/watch?v=VHcw4BUNsBc