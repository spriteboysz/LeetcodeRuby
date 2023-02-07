# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/7 23:52
# FilePath: P2553. 分割数组中数字的数位.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def separate_digits(nums)
    digits = []
    nums.each do |num|
        digits << num.to_s.chars
    end
    digits.flatten.map(&:to_i)
end

if __FILE__ == $PROGRAM_NAME
    p separate_digits(nums = [13, 25, 83, 77])
end


