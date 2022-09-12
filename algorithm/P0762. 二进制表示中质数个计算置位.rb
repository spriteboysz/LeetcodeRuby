# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 17:23
# FilePath: P0762. 二进制表示中质数个计算置位.rb
# Description: 

# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def count_prime_set_bits(left, right)
    counts = [2, 3, 5, 7, 11, 13, 17, 19]
    (left..right).select { |num| counts.include?(num.to_s(2).count("1")) }.length
end

p count_prime_set_bits(left = 10, right = 15)



