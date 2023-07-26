# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 21:24
# FilePath: P1716. 计算力扣银行的钱.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def total_money(n)
    total = 0
    (0...n).each { |i|
        total += i / 7 + i % 7 + 1
    }
    total
end

if __FILE__ == $PROGRAM_NAME
    p total_money(20)
end


