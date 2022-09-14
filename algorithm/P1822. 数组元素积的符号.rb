# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 23:07
# FilePath: P1822. 数组元素积的符号.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def array_sign(nums)
    negative = 0
    nums.each { |num|
        return 0 if num == 0
        negative += 1 if num < 0
    }
    negative % 2 == 0 ? 1 : -1
end

p array_sign(nums = [-1, 1, -1, 1, -1])



