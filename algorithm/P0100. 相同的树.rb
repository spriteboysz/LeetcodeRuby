# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 18:01
# FilePath: P0100. 相同的树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}
def is_same_tree(p, q)
    return true if p.nil? && q.nil?
    return false if p.nil? || q.nil?
    return false if p.val != q.val
    is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end

if __FILE__ == $PROGRAM_NAME
    p is_same_tree(TreeNode.create("[1,2]"), TreeNode.create("[1,null,2]"))
end
