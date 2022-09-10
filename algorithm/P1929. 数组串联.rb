# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 22:21
# FilePath: P1929. 数组串联.rb
# Description: 1929. 数组串联

# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums)
    n = nums.length
    nums.each_with_index do |num, index|
        nums[index + n] = num
        break if nums.length == 2 * n
    end
    nums
end

# test
ans = get_concatenation([1, 3, 2, 1])
p ans



