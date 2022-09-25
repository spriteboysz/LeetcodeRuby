# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 15:50
# FilePath: P2094. 找出 3 位偶数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} digits
# @return {Integer[]}
def find_even_numbers(digits)
    number = Array.new(10, 0)
    digits.each { |digit| number[digit] += 1 }
    even = []
    100.step(998, 2).each do |i|
        cur = Array.new(10, 0)
        i.to_s.chars.map(&:to_i).each { |k| cur[k] += 1 }
        flag = true
        (0..9).each { |j|
            if cur[j] > number[j]
                flag = false
                break
            end
        }
        even << i if flag
    end
    even
end

if __FILE__ == $PROGRAM_NAME
    p find_even_numbers(digits = [2, 2, 8, 8, 2])
end
