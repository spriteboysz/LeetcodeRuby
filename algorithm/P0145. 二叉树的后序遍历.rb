# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 21:46
# FilePath: P0145. 二叉树的后序遍历.rb
# Description: 

load 'common/TreeNode.rb'

def dfs(root)
    return if root.nil?
    dfs(root.left)
    dfs(root.right)
    @values.append(root.val)
end

# @param {TreeNode} root
# @return {Integer[]}
def postorder_traversal(root)
    @values = []
    dfs(root)
    @values
end

p postorder_traversal(TreeNode.create("[1,null,2,3]"))



