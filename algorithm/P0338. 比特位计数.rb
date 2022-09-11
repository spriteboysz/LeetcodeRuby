# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:44
# FilePath: P0338. 比特位计数.rb
# Description: 

# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
    bits = []
    (0..n).each { |i| bits.append(i.to_s(2).count("1")) }
    bits
end

p count_bits(5)



