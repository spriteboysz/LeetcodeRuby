# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 22:53
# FilePath: P1413. 逐步求和得到正数的最小值.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def min_start_value(nums)
    pre, sum = 0, 0
    nums.each { |num|
        sum += num
        pre = [pre, sum].min
    }
    pre.abs + 1
end

p min_start_value(nums = [-3, 2, -3, 4, 2])



