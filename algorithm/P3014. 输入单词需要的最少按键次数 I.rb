# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-27 21:46
# FilePath: P3014. 输入单词需要的最少按键次数 I.rb
# Description:

load "common/leetcode.rb"

# @param {String} word
# @return {Integer}
def minimum_pushes(word)
    k = word.length / 8
    (k * 4 + word.length % 8) * (k + 1)
end

if __FILE__ == $PROGRAM_NAME
    p minimum_pushes(word = "abcde")
end


