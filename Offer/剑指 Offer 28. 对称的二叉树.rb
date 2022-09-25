# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 20:48
# FilePath: 剑指 Offer 28. 对称的二叉树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
    return true if root.nil?
    dfs(root.left, root.right)
end

def dfs(node1, node2)
    return true if node1.nil? && node2.nil?
    return false if node1.nil? || node2.nil?
    return false if node1.val != node2.val
    dfs(node1.left, node2.right) && dfs(node1.right, node2.left)
end

if __FILE__ == $PROGRAM_NAME
    p is_symmetric(TreeNode.create("[1,2,2,3,4,4,3]"))
end
