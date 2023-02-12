# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 13:17
# FilePath: P0179. 最大数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {String}
def largest_number(nums)
    nums.map(&:to_s).sort { |x, y| x + y < y + x ? 1 : -1 }.join.to_i.to_s
end

if __FILE__ == $PROGRAM_NAME
    p largest_number([3, 30, 34, 5, 9])
end


