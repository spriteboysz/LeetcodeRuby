# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 11:25
# FilePath: P1492. n 的第 k 个因子.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def kth_factor(n, k)
    (1..n).each do |i|
        k -= 1 if n % i == 0
        return i if k == 0
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p kth_factor(n = 12, k = 3)
end
