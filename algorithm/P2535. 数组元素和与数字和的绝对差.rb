# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/3 23:09
# FilePath: P2535. 数组元素和与数字和的绝对差.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def difference_of_sum(nums)
    sum2 = 0
    nums.each do |num|
        num.to_s.chars.each do |c|
            sum2 += c.to_i
        end
    end
    (nums.sum - sum2).abs
end

if __FILE__ == $PROGRAM_NAME
    p difference_of_sum(nums = [1, 15, 6, 3])
end


