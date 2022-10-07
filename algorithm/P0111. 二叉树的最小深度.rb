# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 14:09
# FilePath: P0111. 二叉树的最小深度.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer}
def min_depth(root)
    return 0 if root.nil?
    return 1 if root.left.nil? && root.right.nil?
    left = min_depth(root.left)
    right = min_depth(root.right)
    return left + 1 if !root.left.nil? && root.right.nil?
    return right + 1 if root.left.nil? && !root.right.nil?
    [left, right].min + 1
end

if __FILE__ == $PROGRAM_NAME
    p min_depth(TreeNode.create("[2,null,3,null,4,null,5,null,6]"))
end
