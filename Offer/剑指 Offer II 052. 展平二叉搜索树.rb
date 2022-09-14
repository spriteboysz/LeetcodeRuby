# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 22:31
# FilePath: 剑指 Offer II 052. 展平二叉搜索树.rb
# Description: 

load 'common/TreeNode.rb'

def dfs(root)
    return if root.nil?
    dfs(root.left)
    @root.right = root
    @root = @root.right
    root.left = nil
    dfs(root.right)
end

def increasing_bst(root)
    dummy = TreeNode.new(-1)
    @root = dummy
    dfs(root)
    dummy.right
end

p increasing_bst(TreeNode.create("[5,1,7]")).to_s



