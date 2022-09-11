# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 20:28
# FilePath: P1913. 两个数对之间的最大乘积差.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer}
def max_product_difference(nums)
    max1, max2, min1, min2 = 0, 0, 10001, 10001
    nums.each { |num|
        if num > max1
            max2 = max1
            max1 = num
        elsif num > max2
            max2 = num
        end
        if num < min1
            min2 = min1
            min1 = num
        elsif num < min2
            min2 = num
        end
    }
    max1 * max2 - min1 * min2
end

p max_product_difference([4, 2, 5, 9, 7, 4, 8])



