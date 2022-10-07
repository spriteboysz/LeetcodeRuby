# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 14:54
# FilePath: P0257. 二叉树的所有路径.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {String[]}
def binary_tree_paths(root)
    @paths = []
    dfs(root, "")
    @paths
end

def dfs(root, path)
    return if root.nil?
    path += root.val.to_s
    if root.left.nil? && root.right.nil?
        @paths << path
    else
        path += "->"
        dfs(root.left, path)
        dfs(root.right, path)
    end
end

if __FILE__ == $PROGRAM_NAME
    p binary_tree_paths(TreeNode.create("[1,2,3,null,5]"))
end
