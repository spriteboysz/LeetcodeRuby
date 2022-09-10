# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 23:07
# FilePath: P1486.rb
# Description: 

# @param {Integer} n
# @param {Integer} start
# @return {Integer}
def xor_operation(n, start)
    ret = 0
    (0..n - 1).each { |i| ret ^= start + 2 * i }
    ret
end

p xor_operation(n = 10, start = 5)



