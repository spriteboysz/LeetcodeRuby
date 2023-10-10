# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 15:58
# FilePath: LCR 144. 翻转二叉树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {TreeNode}
def mirror_tree(root)
    return root if root.nil?
    left = mirror_tree(root.left)
    right = mirror_tree(root.right)
    root.left, root.right = right, left
    root
end

if __FILE__ == $PROGRAM_NAME
    p mirror_tree(TreeNode.create("[5,7,9,8,3,2,4]")).to_s
end


