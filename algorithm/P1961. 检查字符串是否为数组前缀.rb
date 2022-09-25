# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 16:20
# FilePath: P1961. 检查字符串是否为数组前缀.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String[]} words
# @return {Boolean}
def is_prefix_string(s, words)
    ss = ""
    words.each do |word|
        ss += word
        return true if ss == s
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p is_prefix_string(s = "iloveleetcode", words = %w[i love leetcode apples])
end
