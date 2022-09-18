# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 15:46
# FilePath: 面试题 17.04. 消失的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
    counts = Array.new(nums.length + 1, 0)
    nums.each { |num| counts[num] = 1 }
    counts.index(0)
end

if __FILE__ == $PROGRAM_NAME
    p missing_number([9, 6, 4, 2, 3, 5, 7, 0, 1])
end
