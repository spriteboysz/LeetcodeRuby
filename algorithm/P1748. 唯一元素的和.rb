# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:26
# FilePath: P1748. 唯一元素的和.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
    sum = 0
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash.each_pair { |k, v| sum += k if v == 1 }
    sum
end

p sum_of_unique(nums = [1, 2, 3, 2])



