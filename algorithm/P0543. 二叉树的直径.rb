# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 16:30
# FilePath: P0543. 二叉树的直径.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer}
def diameter_of_binary_tree(root)
    @diameter = 1
    dfs(root)
    @diameter - 1
end

def dfs(root)
    return 0 if root.nil?
    left, right = dfs(root.left), dfs(root.right)
    @diameter = [@diameter, left + right + 1].max
    [left, right].max + 1
end

if __FILE__ == $PROGRAM_NAME
    p diameter_of_binary_tree(TreeNode.create("[1,2,3,4,5]"))
end
