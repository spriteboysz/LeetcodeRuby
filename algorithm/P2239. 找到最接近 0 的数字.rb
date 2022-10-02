# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 14:06
# FilePath: 2239. 找到最接近 0 的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_closest_number(nums)
    nums.min_by { |num| [num.abs, -num] }
end

if __FILE__ == $PROGRAM_NAME
    p find_closest_number(nums = [-4, -2, 1, 4, 8])
    p find_closest_number([2, -1, 1])
end
