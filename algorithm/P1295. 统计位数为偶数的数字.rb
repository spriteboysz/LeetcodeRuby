# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 17:14
# FilePath: P1295. 统计位数为偶数的数字.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def find_numbers(nums)
    nums.map { |num| num.to_s.length }.select { |n| n % 2 == 0 }.length
end

p find_numbers(nums = [555, 901, 482, 1771])



