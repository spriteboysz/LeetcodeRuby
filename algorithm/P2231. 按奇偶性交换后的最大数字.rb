# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 22:59
# FilePath: P2231. 按奇偶性交换后的最大数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Integer}
def largest_integer(num)
    even, even_index, odd, odd_index = [], [], [], []
    num.to_s.chars.each_with_index do |c, i|
        if c.to_i.even?
            even << c
            even_index << i
        else
            odd << c
            odd_index << i
        end
    end

    even, odd = even.sort.reverse, odd.sort.reverse
    largest = [""] * num.to_s.length
    i, j = 0, 0
    num.to_s.chars.each_index do |k|
        if even_index.include?(k)
            largest[k] = even[i]
            i += 1
        else
            largest[k] = odd[j]
            j += 1
        end
    end
    largest.join.to_i
end

if __FILE__ == $PROGRAM_NAME
    p largest_integer(num = 1234)
end


