# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 22:41
# FilePath: P1720. 解码异或后的数组.rb
# Description: 

# @param {Integer[]} encoded
# @param {Integer} first
# @return {Integer[]}
def decode(encoded, first)
    decoded = [first]
    encoded.each { |num| decoded.append(decoded.last ^ num) }
    decoded
end

p decode(encoded = [6, 2, 7, 3], first = 4)



