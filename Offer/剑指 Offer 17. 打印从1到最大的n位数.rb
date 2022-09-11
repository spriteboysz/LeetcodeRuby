# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:46
# FilePath: 剑指 Offer 17. 打印从1到最大的n位数.rb
# Description: 

# @param {Integer} n
# @return {Integer[]}
def print_numbers(n)
    numbers = []
    (1...10 ** n).each { |i| numbers.append(i) }
    numbers
end

p print_numbers(2)




