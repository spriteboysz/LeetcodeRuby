# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 20:49
# FilePath: 面试题 04.08. 首个共同祖先.rb
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
    return root if !left.nil? && !right.nil?
    left.nil? ? right : left
end

if __FILE__ == $PROGRAM_NAME
    root = TreeNode.create("[3,5,1,6,2,0,8,null,null,7,4]")
    p = TreeNode.new(5)
    q = TreeNode.new(1)
    p lowest_common_ancestor(root, p, q).to_s
end
