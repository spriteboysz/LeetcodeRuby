# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:42
# FilePath: 剑指 Offer II 003. 前 n 个数字二进制中 1 的个数.rb
# Description: 

# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
    bits = []
    (0..n).each { |i| bits.append(i.to_s(2).count("1")) }
    bits
end

p count_bits(5)



