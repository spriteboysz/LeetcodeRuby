# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 23:42
# FilePath: P0144. 二叉树的前序遍历.rb
# Description: 

load 'common/TreeNode.rb'

def dfs(root)
    return if root.nil?
    @values.append(root.val)
    dfs(root.left)
    dfs(root.right)
end

# @param {TreeNode} root
# @return {Integer[]}
def preorder_traversal(root)
    @values = []
    dfs(root)
    @values
end

p preorder_traversal(TreeNode.create("[1,null,2,3]"))



