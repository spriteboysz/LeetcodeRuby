# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 23:14
# FilePath: 剑指 Offer II 095. 最长公共子序列.rb
# Description:

load "common/leetcode.rb"

# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
    i, j = 0, 0
    while i < text1.length || j < text2.length
        0
    end
end

if __FILE__ == $PROGRAM_NAME
    longest_common_subsequence("abcde", "ace")
    longest_common_subsequence("abcde", "fab")
end
