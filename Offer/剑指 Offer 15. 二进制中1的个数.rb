# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 17:36
# FilePath: 剑指 Offer 15. 二进制中1的个数.rb
# Description: 

# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
    n.to_s(2).count("1")
end

p hamming_weight(n = 128)
p hamming_weight(n = 4294967293)



