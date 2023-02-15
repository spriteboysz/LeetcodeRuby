# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-14 22:59
# FilePath: 面试题45. 把数组排成最小的数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {String}
def min_number(nums)
    nums.map(&:to_s).sort { |x, y| x + y < y + x ? -1 : 1 }.join
end

if __FILE__ == $PROGRAM_NAME
    p min_number([3, 30, 34, 5, 9])
    p min_number([10, 2])
end


