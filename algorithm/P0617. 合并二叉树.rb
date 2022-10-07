# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 16:57
# FilePath: P0617. 合并二叉树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {TreeNode}
def merge_trees(root1, root2)
    return root2 if root1.nil?
    return root1 if root2.nil?
    root = TreeNode.new(root1.val + root2.val)
    root.left = merge_trees(root1.left, root2.left)
    root.right = merge_trees(root1.right, root2.right)
    root
end

if __FILE__ == $PROGRAM_NAME
    p merge_trees(TreeNode.create("[1]"), TreeNode.create("[1,2]")).to_s
end
