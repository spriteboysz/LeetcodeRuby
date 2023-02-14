# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-13 23:11
# FilePath: P1291. 顺次数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} low
# @param {Integer} high
# @return {Integer[]}
def sequential_digits(low, high)
    sequential = []
    (1...10).each { |i|
        num = i
        (i + 1...10).each { |j|
            num = num * 10 + j
            sequential << num if num >= low and num <= high
        }
    }
    sequential.sort
end

if __FILE__ == $PROGRAM_NAME
    p sequential_digits(low = 1000, high = 13000)
end


