# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:07
# FilePath: P1021. 删除最外层的括号.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
    ss, cur, balance = "", "", 0
    s.each_char do |c|
        if c == "("
            balance += 1
        else
            balance -= 1
        end
        cur += c
        if balance == 0
            ss += cur[1..cur.length - 2]
            cur = ""
        end
    end
    ss
end

if __FILE__ == $PROGRAM_NAME
    p remove_outer_parentheses(s = "(()())(())(()(()))")
    p remove_outer_parentheses(s = "()()")
end
