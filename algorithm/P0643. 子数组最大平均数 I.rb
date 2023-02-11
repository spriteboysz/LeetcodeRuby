# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-10 22:22
# FilePath: P0643. 子数组最大平均数 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
    cur = nums[0...k].sum
    maximum = cur
    (k...nums.length).each do |i|
        cur += nums[i] - nums[i - k]
        maximum = cur if cur > maximum
    end
    maximum / (1.0 * k)
end

if __FILE__ == $PROGRAM_NAME
    p find_max_average(nums = [1, 12, -5, -6, 50, 3], k = 4)
end


