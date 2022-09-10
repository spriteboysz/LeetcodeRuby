# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 23:33
# FilePath: P1470. 重新排列数组.rb
# Description: 

# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
    ret = []
    (0..n - 1).each { |i|
        ret[2 * i] = nums[i]
        ret[2 * i + 1] = nums[n + i]
    }
    ret
end

p shuffle(nums = [1, 2, 3, 4, 4, 3, 2, 1], n = 4)



