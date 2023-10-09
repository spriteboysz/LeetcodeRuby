# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:03
# FilePath: LCR 127. 跳跃训练.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def train_ways(n)
    a, b = 1, 1
    n.times do
        a, b = b, a + b
    end
    a % (10 ** 9 + 7)
end

if __FILE__ == $PROGRAM_NAME
    p train_ways(5)
    p train_ways(8)
end


