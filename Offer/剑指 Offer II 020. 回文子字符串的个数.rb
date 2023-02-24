# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-24 21:11
# FilePath: 剑指 Offer II 020. 回文子字符串的个数.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def count_substrings(s)
    dp, cnt = [0] * s.length, 0
    s.chars.each_with_index do |c, j|
        (0..j).each { |i|
            if s[i] == c && (j - i <= 2 || dp[i + 1])
                dp[i] = true
                cnt += 1
            else
                dp[i] = false
            end
        }
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_substrings("aaa")
end


