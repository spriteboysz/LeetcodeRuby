# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 22:05
# FilePath: LCR 047. 二叉树剪枝.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {TreeNode}
def prune_tree(root)
    return nil if root.nil?
    root.left = prune_tree(root.left)
    root.right = prune_tree(root.right)
    return root if root.val == 1 || !root.left.nil? || !root.right.nil?
    nil
end

if __FILE__ == $PROGRAM_NAME
    p prune_tree(TreeNode.create("[1,null,0,0,1]")).to_s
end


