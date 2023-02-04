# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/3 23:31
# FilePath: P2529. 正整数和负整数的最大计数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def maximum_count(nums)
    positive, negative = 0, 0
    nums.each do |num|
        positive += 1 if num > 0
        negative += 1 if num < 0
    end
    [positive, negative].max
end

if __FILE__ == $PROGRAM_NAME
    p maximum_count(nums = [-2,-1,-1,1,2,3])
end


