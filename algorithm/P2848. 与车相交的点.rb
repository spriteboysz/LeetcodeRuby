# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-16 22:37
# FilePath: P2848. 与车相交的点.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} nums
# @return {Integer}
def number_of_points(nums)
    points = Hash.new(0)
    nums.each { |num|
        (num[0]..num[1]).each { |i|
            points[i] |= 1
        }
    }
    points.length
end

if __FILE__ == $PROGRAM_NAME
    p number_of_points(nums = [[3, 6], [1, 5], [4, 7]])
end


