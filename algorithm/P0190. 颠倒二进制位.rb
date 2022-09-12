# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 23:09
# FilePath: P0190. 颠倒二进制位.rb
# Description: 

# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
    n.to_s(2).rjust(32, '0').reverse.to_i(2)
end

p reverse_bits(43261596)
p reverse_bits(4294967293)



