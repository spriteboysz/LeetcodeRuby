# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-19 15:07
# FilePath: P0669. 修剪二叉搜索树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {TreeNode}
def trim_bst(root, low, high)
    return nil unless root
    return trim_bst(root.right, low, high) if root.val < low
    return trim_bst(root.left, low, high) if root.val > high
    root.left = trim_bst(root.left, low, high)
    root.right = trim_bst(root.right, low, high)
    root
end

if __FILE__ == $PROGRAM_NAME
    root = TreeNode.create("[3,0,4,null,2,null,null,1]")
    p trim_bst(root, 1, 3).to_s
end


