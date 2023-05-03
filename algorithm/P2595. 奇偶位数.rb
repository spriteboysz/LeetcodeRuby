# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 18:29
# FilePath: P2595. 奇偶位数.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} n
# @return {Integer[]}
def even_odd_bit(n)
    even, odd = 0, 0
    n.to_s(2).reverse.chars.each_with_index do |item, i|
        next if item == '0'
        even += 1 if i % 2 == 0
        odd += 1 if i % 2 == 1
    end
    [even, odd]
end

if __FILE__ == $PROGRAM_NAME
    p even_odd_bit(17)
end


