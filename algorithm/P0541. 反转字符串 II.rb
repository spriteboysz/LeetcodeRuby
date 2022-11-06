# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 17:20
# FilePath: P0541. 反转字符串 II.rb
# Description:

load "common/leetcode.rb"
# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
    ss = []
    0.step(s.size - 1, k).each { |i| ss << s[i, k] }
    ss.each_index do |i|
        ss[i] = ss[i].reverse if i % 2 == 0
    end
    ss.join("")
end

if __FILE__ == $PROGRAM_NAME
    p reverse_str(s = "abcdefg", k = 2)
    p reverse_str(s = "abcd", k = 2)
end
