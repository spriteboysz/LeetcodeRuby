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
    diff = []
    (0..nums.length - k).each { |i|
        diff << nums[i + k - 1] - nums[i]
    }
    diff.min
end

if __FILE__ == $PROGRAM_NAME
    p minimum_difference(nums = [9, 4, 1, 7], k = 2)
    p minimum_difference([87063, 61094, 44530, 21297, 95857, 93551, 9918], 6)
end


