# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-09 21:15
# FilePath: P0583. 两个字符串的删除操作.rb
# Description:

load "common/leetcode.rb"
# @param {String} word1
# @param {String} word2
# @return {Integer}
def min_distance(word1, word2)
    m, n = word1.size, word2.size
    dp = Array.new(m + 1) { |_| Array.new(n + 1).fill(0) }
    (0...m).each { |i|
        (0...n).each { |j|
            if word1[i] == word2[j]
                dp[i + 1][j + 1] = dp[i][j] + 1
            else
                dp[i + 1][j + 1] = [dp[i][j + 1], dp[i + 1][j]].max
            end
        }
    }
    m + n - dp[m][n] * 2
end

if __FILE__ == $PROGRAM_NAME
    p min_distance(word1 = "leetcode", word2 = "etco")
end
