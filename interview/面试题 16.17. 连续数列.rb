# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 17:02
# FilePath: 面试题 16.17. 连续数列.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    cnt, maximum = 0, nums[0]
    nums.each do |num|
        cnt = [num, num + cnt].max
        maximum = [cnt, maximum].max
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p max_sub_array([-2, 1, -3, 4, -1, 2, 1, -5, 4])
end
