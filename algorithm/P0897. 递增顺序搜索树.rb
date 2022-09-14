# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 22:39
# FilePath: P0897. 递增顺序搜索树.rb
# Description: 

load 'common/TreeNode.rb'

def dfs(node)
    return if node.nil?
    dfs(node.left)
    @root.right = node
    @root = @root.right
    node.left = nil
    dfs(node.right)
end

# @param {TreeNode} root
# @return {TreeNode}
def increasing_bst(root)
    dummy = TreeNode.new(-1)
    @root = dummy
    dfs(root)
    dummy.right
end

p increasing_bst(TreeNode.create("[5,1,7]")).to_s



