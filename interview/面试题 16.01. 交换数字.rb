# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 20:42
# FilePath: 面试题 16.01. 交换数字.rb
# Description: 

# @param {Integer[]} numbers
# @return {Integer[]}
def swap_numbers(numbers)
    a, b = numbers
    b, a = a, b
    [a, b]
end

p swap_numbers(numbers = [1, 2])



