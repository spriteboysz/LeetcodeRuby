# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 16:17
# FilePath: P0485. 最大连续 1 的个数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
    nums.each_index do |i|
        next if i == 0
        nums[i] += nums[i - 1] if nums[i] == 1
    end
    nums.max
end

if __FILE__ == $PROGRAM_NAME
    p find_max_consecutive_ones(nums = [1, 0, 1, 1, 0, 1])
end
