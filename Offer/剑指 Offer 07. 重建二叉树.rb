# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 20:16
# FilePath: 剑指 Offer 07. 重建二叉树.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} preorder
# @param {Integer[]} inorder
# @return {TreeNode}
def build_tree(preorder, inorder)
    return nil if preorder.empty? || inorder.empty?
    index = inorder.index(preorder[0])
    root = TreeNode.new(preorder[0])
    root.left = build_tree(preorder[1..index], inorder[0...index])
    root.right = build_tree(preorder[index + 1..], inorder[index + 1..])
    root
end

if __FILE__ == $PROGRAM_NAME
    p build_tree(preorder = [3, 9, 20, 15, 7], inorder = [9, 3, 15, 20, 7]).to_s
end
