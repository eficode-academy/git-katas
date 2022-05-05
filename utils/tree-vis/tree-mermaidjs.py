import git
from git import Repo
from treelib import Node, Tree


repo_path = "../../investigation/exercise/"

repo = Repo(repo_path)

root_tree = repo.heads.master.commit.tree

root_tree_hash = str(root_tree)

# tree for visualizing the git tree
#  tree_graph = Tree()

# root node
#  tree_graph.create_node(f"tree/root {root_tree_hash}", root_tree_hash)


def append_file(line: str):
    with open("graph.mmd", "a+") as _file:
        _file.write(line)


def traverse_tree_mermaid(tree: git.objects.tree.Tree, parent: str):
    if not parent:
        parent = f"tree{str(tree)[:8]}"

    for item in tree:
        item_sha = str(item)[:8]

        if isinstance(item, git.objects.tree.Tree):
            node = f"tree{item_sha}"
            line = f"\t{parent} --> {node}\n"
            append_file(line)
            traverse_tree_mermaid(item, node)

        elif isinstance(item, git.objects.blob.Blob):
            node = f"blob{item_sha}"
            line = f"\t{parent} --> {node}\n"
            append_file(line)


def traverse_tree(tree):
    tree_sha = str(tree)

    for item in tree:
        item_sha = str(item)

        if isinstance(item, git.objects.tree.Tree):
            tree_graph.create_node(f"tree {item_sha}", item_sha, parent=tree_sha)
            traverse_tree(item)

        elif isinstance(item, git.objects.blob.Blob):
            tree_graph.create_node(f"blob {item_sha}", item_sha, parent=tree_sha)


append_file("stateDiagram\n")

traverse_tree_mermaid(root_tree, None)


#  traverse_tree(root_tree)

#  tree_graph.show()
