# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 23:28
# FilePath: 剑指 Offer 39. 数组中出现次数超过一半的数字.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash.each_pair { |k, v| return k if v > nums.length / 2 }
end

p majority_element([1, 2, 3, 2, 2, 2, 5, 4, 2])



