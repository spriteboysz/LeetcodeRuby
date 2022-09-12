# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 20:27
# FilePath: P2154. 将找到的值乘以 2.rb
# Description: 

# @param {Integer[]} nums
# @param {Integer} original
# @return {Integer}
def find_final_value(nums, original)
    while nums.include?(original)
        original *= 2
    end
    original
end

p find_final_value(nums = [5, 3, 6, 1, 12], original = 3)



