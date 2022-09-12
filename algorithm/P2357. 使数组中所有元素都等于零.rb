# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 18:06
# FilePath: P2357. 使数组中所有元素都等于零.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def minimum_operations(nums)
    nums.uniq.count { |num| num != 0 }
end

p minimum_operations(nums = [1, 5, 0, 3, 5])
p minimum_operations(nums = [0])



