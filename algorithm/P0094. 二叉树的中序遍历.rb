# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 21:40
# FilePath: P0094. 二叉树的中序遍历.rb
# Description: 

load 'common/TreeNode.rb'

def dfs(root)
    return if root.nil?
    dfs(root.left)
    @values.append(root.val)
    dfs(root.right)
end

# @param {TreeNode} root
# @return {Integer[]}
def inorder_traversal(root)
    @values = []
    dfs(root)
    @values
end

p inorder_traversal(TreeNode.create("[1,null,2,3]"))



