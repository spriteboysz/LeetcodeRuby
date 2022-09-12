# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 17:53
# FilePath: P2206. 将数组划分成相等数对.rb
# Description: 

# @param {Integer[]} nums
# @return {Boolean}
def divide_array(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    hash.each_value { |v| return false if v % 2 == 1 }
    true
end

p divide_array(nums = [3, 2, 3, 2, 2, 2])
p divide_array(nums = [1, 2, 3, 4])



