# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 14:48
# FilePath: P0236. 二叉树的最近公共祖先.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
    return nil if root.nil?
    return root if root.val == p.val || root.val == q.val
    left = lowest_common_ancestor(root.left, p, q)
    right = lowest_common_ancestor(root.right, p, q)
    if root.left.nil? && root.right.nil?
        nil
    elsif left.nil?
        right
    elsif right.nil?
        left
    else
        root
    end
end

if __FILE__ == $PROGRAM_NAME
    p lowest_common_ancestor(TreeNode.create("[6,2,8,0,4,7,9,null,null,3,5]"),
                             TreeNode.new(2),
                             TreeNode.new(4)).to_s
end
