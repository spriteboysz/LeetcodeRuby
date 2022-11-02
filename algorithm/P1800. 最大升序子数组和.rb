# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-01 23:44
# FilePath: P1800. 最大升序子数组和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def max_ascending_sum(nums)
    maximum, sum = 0, 0
    nums.each_with_index do |num, i|
        if i == 0 || num > nums[i - 1]
            sum += num
            maximum = [maximum, sum].max
        else
            sum = num
        end
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p max_ascending_sum([12, 17, 15, 13, 10, 11, 12])
end
