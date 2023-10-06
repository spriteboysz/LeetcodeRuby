# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-04 21:01
# FilePath: LCR 003. 比特位计数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
    count = []
    (0..n).each { |num|
        count << num.to_s(base = 2).count('1')
    }
    count
end

if __FILE__ == $PROGRAM_NAME
    p count_bits(5)
end


