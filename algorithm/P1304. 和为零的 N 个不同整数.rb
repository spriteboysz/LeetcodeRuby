# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 23:59
# FilePath: P1304. 和为零的 N 个不同整数.rb
# Description: 

# @param {Integer} n
# @return {Integer[]}
def sum_zero(n)
    return [0] if n == 1
    zero = (-(n / 2)..-1).to_a + (1..n / 2).to_a
    n % 2 == 1 ? zero.append(0) : zero
end

p sum_zero(2)
p sum_zero(3)
p sum_zero(4)
p sum_zero(5)
p sum_zero(1)



