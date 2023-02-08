# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-08 20:58
# FilePath: P1984. 学生分数的最小差值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def minimum_difference(nums, k)
    nums.sort!
    minimum = nums[nums.length - 1] - nums[0]
    nums.each_index do |i|
        next if i <= k
        minimum = [minimum, nums[i] - nums[i - k + 1]].min
    end
    minimum
end

if __FILE__ == $PROGRAM_NAME
    p minimum_difference(nums = [9, 4, 1, 7], k = 2)
end


