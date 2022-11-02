# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-02 23:29
# FilePath: P0856. 括号的分数.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def score_of_parentheses(s)
    score, cur = 0, 0
    s.chars.each_with_index do |c, i|
        if c == "("
            cur += 1
        else
            cur -= 1
            if s[i - 1] == "("
                score += 1 << cur
            end
        end
    end
    score
end

if __FILE__ == $PROGRAM_NAME
    p score_of_parentheses("(()(()))")
end
