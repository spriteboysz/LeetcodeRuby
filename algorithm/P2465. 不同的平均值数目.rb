# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 21:45
# FilePath: P2465. 不同的平均值数目.rb
# Description:

load "common/leetcode.rb"
require 'set'

# @param {Integer[]} nums
# @return {Integer}
def distinct_averages(nums)
    nums.sort!
    average = Set.new
    nums.each_with_index do |num, i|
        average.add?(num + nums[nums.length - 1 - i])
    end
    average.length
end

if __FILE__ == $PROGRAM_NAME
    p distinct_averages(nums = [4, 1, 4, 0, 3, 5])
end


