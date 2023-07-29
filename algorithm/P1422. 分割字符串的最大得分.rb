# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-29 22:32
# FilePath: P1422. 分割字符串的最大得分.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def max_score(s)
    maximum, n = 0, s.size
    (1...n).each { |i|
        score = 0
        (0...i).each { |j|
            score += 1 if s[j] == '0'
        }
        (i...n).each { |j|
            score += 1 if s[j] == '1'
        }
        maximum = [maximum, score].max
    }
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p max_score(s = "011101")
end


