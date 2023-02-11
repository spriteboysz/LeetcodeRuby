# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 21:05
# FilePath: P0189. 轮转数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Void} Do not return anything, modify nums in-place instead.
def rotate(nums, k)
    n = nums.length
    k %= n
    (nums[n - k...n] + nums[0...n - k]).each_with_index do |num, i|
        nums[i] = num
    end
    nums
end

if __FILE__ == $PROGRAM_NAME
    p rotate(nums = [1, 2, 3, 4, 5, 6, 7], k = 3)
end


