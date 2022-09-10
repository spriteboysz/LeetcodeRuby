# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 19:15
# FilePath: P1920. 基于排列构建数组.rb
# Description: 1920. 基于排列构建数组

# @param {Integer[]} nums
# @return {Integer[]}
def build_array(nums)
    new_nums = []
    nums.each_with_index do |num, index|
        new_nums[index] = nums[num]
    end
    new_nums
end

p build_array([5, 0, 1, 2, 3, 4])



