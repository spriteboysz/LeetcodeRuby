# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 23:13
# FilePath: P0137. 只出现一次的数字 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash.keys.find { |num| hash[num] == 1 }
end

if __FILE__ == $PROGRAM_NAME
    p single_number(nums = [0, 1, 0, 1, 0, 1, 99])
end
