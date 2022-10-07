# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 13:49
# FilePath: P0108. 将有序数组转换为二叉搜索树.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
    return nil if nums.nil? || nums.empty?
    mid = nums.length >> 1
    root = TreeNode.new(nums[mid])
    root.left = sorted_array_to_bst(nums[0...mid])
    root.right = sorted_array_to_bst(nums[mid + 1..])
    root
end

if __FILE__ == $PROGRAM_NAME
    p sorted_array_to_bst([-10, -3, 0, 5, 9]).to_s
end
