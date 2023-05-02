# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 15:43
# FilePath: P2652. 倍数求和.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} n
# @return {Integer}
def sum_of_multiples(n)
    (1..n).select { |x| x % 3 == 0 || x % 5 == 0 || x % 7 == 0 }.sum
end

if __FILE__ == $PROGRAM_NAME
    p sum_of_multiples(10)
end


