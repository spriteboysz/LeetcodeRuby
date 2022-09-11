# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:57
# FilePath: P1979. 找出数组的最大公约数.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def find_gcd(nums)
    nums.max.gcd(nums.min)
end

p find_gcd([2, 5, 6, 9, 10])



