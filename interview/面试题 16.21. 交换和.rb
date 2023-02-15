# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 11:26
# FilePath: 面试题 16.21. 交换和.rb
# Description:

load "common/leetcode.rb"
require 'set'

# @param {Integer[]} array1
# @param {Integer[]} array2
# @return {Integer[]}
def find_swap_values(array1, array2)
    sum1, sum2 = array1.sum, array2.sum
    return [] if (sum1 + sum2).odd?
    avg = (sum1 + sum2) / 2
    gap = sum1 - avg
    nums2 = Set.new(array2)
    array1.each { |num1|
        return [num1, num1 - gap] if nums2.include?(num1 - gap)
    }
    []
end

if __FILE__ == $PROGRAM_NAME
    p find_swap_values(array1 = [4, 1, 2, 1, 1, 2], array2 = [3, 6, 3, 3])
end


