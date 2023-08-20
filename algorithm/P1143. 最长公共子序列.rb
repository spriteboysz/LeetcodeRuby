# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 10:33
# FilePath: P1143. 最长公共子序列.rb
# Description:

load "common/leetcode.rb"

# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
    m, n, maximum = text1.size, text2.size, 0
    dp = Array.new(m + 1) { |_| Array.new(n + 1).fill(0) }
    (1..m).each { |i|
        (1..n).each { |j|
            if text1[i - 1] == text2[j - 1]
                dp[i][j] = [dp[i][j], dp[i - 1][j - 1] + 1].max
                maximum = [maximum, dp[i][j]].max
            else
                dp[i][j] = [dp[i - 1][j], dp[i][j - 1]].max
            end
        }
    }
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p longest_common_subsequence(text1 = "abcde", text2 = "ace")
end


