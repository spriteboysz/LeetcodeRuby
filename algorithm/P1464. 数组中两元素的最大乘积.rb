# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:46
# FilePath: P1464. 数组中两元素的最大乘积.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
    max1, max2 = 0, 0
    nums.each { |num|
        if num > max1
            max2 = max1
            max1 = num
        elsif num > max2
            max2 = num
        end
    }
    (max1 - 1) * (max2 - 1)
end

p max_product(nums = [1, 5, 4, 5])



