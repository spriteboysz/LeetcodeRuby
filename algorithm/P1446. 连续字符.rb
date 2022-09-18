# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 16:35
# FilePath: P1446. 连续字符.rb
# Description:

load "common/leetcode.rb"
# @param {String} s
# @return {Integer}
def max_power(s)
    counts = Array.new(s.length, 1)
    (1...s.length).each do |i|
        counts[i] += counts[i - 1] if s[i] == s[i - 1]
    end
    counts.max
end

if __FILE__ == $PROGRAM_NAME
    p max_power(s = "abbcccddddeeeeedcba")
end
