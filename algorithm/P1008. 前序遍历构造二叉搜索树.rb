# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-19 12:44
# FilePath: P1008. 前序遍历构造二叉搜索树.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} preorder
# @return {TreeNode}
def bst_from_preorder(preorder)
    return nil if preorder.empty?
    left, right = [], []
    root = TreeNode.new(preorder[0])
    preorder[1..].each { |num|
        if num < preorder[0]
            left << num
        else
            right << num
        end
    }
    root.left = bst_from_preorder(left)
    root.right = bst_from_preorder(right)
    root
end

if __FILE__ == $PROGRAM_NAME
    p bst_from_preorder([8, 5, 1, 7, 10, 12]).to_s
end


