# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 22:57
# FilePath: P0441. 排列硬币.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def arrange_coins(n)
    (0..n).each do |i|
        return i if i * (i + 1) / 2 == n
        return i - 1 if i * (i + 1) / 2 > n
    end
end

if __FILE__ == $PROGRAM_NAME
    p arrange_coins(5)
    p arrange_coins(8)
end
