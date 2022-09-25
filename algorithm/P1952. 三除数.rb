# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 16:23
# FilePath: P1952. 三除数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def is_three(n)
    return false if n == 1
    p = n ** 0.5
    return false if p % 1 != 0
    (2..(p / 2)).each do |i|
        return false if p % i == 0
    end
    true
end

if __FILE__ == $PROGRAM_NAME
    p is_three(4)
    p is_three(8)
end
