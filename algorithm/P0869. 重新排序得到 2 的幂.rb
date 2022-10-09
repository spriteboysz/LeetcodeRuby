# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-09 21:56
# FilePath: P0869. 重新排序得到 2 的幂.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def reordered_power_of2(n)
    target, k, m = [], 1, 0
    while k <= 10 ** 9
        target << k.to_s.chars.sort.join
        m += 1
        k = 2 ** m
    end
    target.include?(n.to_s.chars.sort.join)
end

if __FILE__ == $PROGRAM_NAME
    p reordered_power_of2(46)
end
