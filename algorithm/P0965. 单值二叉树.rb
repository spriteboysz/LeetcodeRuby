# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 21:09
# FilePath: P0965. 单值二叉树.rb
# Description: 

load 'common/TreeNode.rb'

# @param {TreeNode} root
# @return {Boolean}

def dfs(root)
    return if root.nil?
    @value.append(root.val)
    dfs(root.left)
    dfs(root.right)
end

def is_unival_tree(root)
    @value = []
    dfs(root)
    @value.uniq.length == 1
end

p is_unival_tree(TreeNode.create("[2,2,2,5,2]"))



