# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 21:53
# FilePath: P2089. 找出数组排序后的目标下标.rb
# Description: 

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def target_indices(nums, target)
    index = []
    nums.sort!
    nums.each_with_index { |num, i| index.append(i) if num == target }
    index
end

p target_indices(nums = [1, 2, 5, 2, 3], target = 2)
p target_indices(nums = [1, 2, 5, 2, 3], target = 3)
p target_indices(nums = [1, 2, 5, 2, 3], target = 4)



