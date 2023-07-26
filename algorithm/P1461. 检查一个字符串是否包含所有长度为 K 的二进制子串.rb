# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 21:56
# FilePath: P1461. 检查一个字符串是否包含所有长度为 K 的二进制子串.rb
# Description:

load "common/leetcode.rb"
require "set"

# @param {String} s
# @param {Integer} k
# @return {Boolean}
def has_all_codes(s, k)
    visited = Set.new
    (0..s.size - k).each { |i|
        visited.add(s[i..i + k - 1])
    }
    visited.size == 2 ** k
end

if __FILE__ == $PROGRAM_NAME
    p has_all_codes("00110110", 2)
end


