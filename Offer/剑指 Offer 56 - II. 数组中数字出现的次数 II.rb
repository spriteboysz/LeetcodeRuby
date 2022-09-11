# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 17:25
# FilePath: 剑指 Offer 56 - II. 数组中数字出现的次数 II.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    nums.each { |num|
        return num if nums.count(num) == 1
    }
end

p single_number(nums = [9, 1, 7, 9, 7, 9, 7])



