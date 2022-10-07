# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 17:27
# FilePath: P0654. 最大二叉树.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {TreeNode}
def construct_maximum_binary_tree(nums)
    return nil if nums.nil? || nums.empty?
    max = nums.max
    index = nums.index(max)
    root = TreeNode.new(max)
    root.left = construct_maximum_binary_tree(nums[0...index])
    root.right = construct_maximum_binary_tree(nums[index + 1..])
    root
end

if __FILE__ == $PROGRAM_NAME
    p construct_maximum_binary_tree([3, 2, 1]).to_s
end
