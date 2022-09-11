# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 16:16
# FilePath: P1389. 按既定顺序创建目标数组.rb
# Description: 

# @param {Integer[]} nums
# @param {Integer[]} index
# @return {Integer[]}
def create_target_array(nums, index)
    target = []
    nums.each_with_index { |num, i| target.insert(index[i], num) }
    target
end

p create_target_array(nums = [1, 2, 3, 4, 0], index = [0, 1, 2, 3, 0])



