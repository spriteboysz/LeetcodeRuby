# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 20:22
# FilePath: P0461. 汉明距离.rb
# Description: 

# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
    (x ^ y).to_s(2).count("1")
end

p hamming_distance(3, 1)



