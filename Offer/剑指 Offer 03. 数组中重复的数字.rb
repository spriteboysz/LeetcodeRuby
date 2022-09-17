# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 21:55
# FilePath: 剑指 Offer 03. 数组中重复的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_repeat_number(nums)
    hash = Hash.new(0)
    nums.each do |num|
        if hash.key?(num)
            return num
        else
            hash[num] = 1
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    p find_repeat_number([2, 3, 1, 0, 2, 5, 3])
end
