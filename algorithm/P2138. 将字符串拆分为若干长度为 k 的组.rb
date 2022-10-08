# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 22:04
# FilePath: P2138. 将字符串拆分为若干长度为 k 的组.rb
# Description:

load "common/leetcode.rb"
# @param {String} s
# @param {Integer} k
# @param {Character} fill
# @return {String[]}
def divide_string(s, k, fill)
    s += fill * ((k - s.length % k) % k)
    divide = []
    0.step(s.length - 1, k).each { |i| divide << s[i...i + k] }
    divide
end

if __FILE__ == $PROGRAM_NAME
    p divide_string(s = "abcdefghij", k = 3, fill = "x")
    p divide_string(s = "abc", k = 3, fill = "x")
end
