import git
from git import Repo
from treelib import Node, Tree


repo_path = "../../investigation/exercise/"

repo = Repo(repo_path)

root_tree = repo.heads.master.commit.tree

root_tree_hash = str(root_tree)

# tree for visualizing the git tree
tree_graph = Tree()

# root node
tree_graph.create_node(f"tree/root {root_tree_hash}", root_tree_hash)


def traverse_tree(tree):
    tree_sha = str(tree)

    for item in tree:
        item_sha = str(item)

        if isinstance(item, git.objects.tree.Tree):
            tree_graph.create_node(f"tree {item_sha}", item_sha, parent=tree_sha)
            traverse_tree(item)

        elif isinstance(item, git.objects.blob.Blob):
            tree_graph.create_node(f"blob {item_sha}", item_sha, parent=tree_sha)


traverse_tree(root_tree)

tree_graph.show()
