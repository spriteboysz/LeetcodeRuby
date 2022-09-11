# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 14:05
# FilePath: P1281. 整数的各位积和之差.rb
# Description: 

# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
    numbers = n.to_s.chars.map { |x| x.to_i }
    product = 1
    numbers.each { |x| product *= x }
    product - numbers.sum
end

p subtract_product_and_sum(4421)



