# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 13:50
# FilePath: P1614. 括号的最大嵌套深度.rb
# Description: 

# @param {String} s
# @return {Integer}
def max_depth(s)
    max, cur = 0, 0
    s.chars.each { |c|
        cur += 1 if c == '('
        max = [cur, max].max
        cur -= 1 if c == ')'
    }
    max
end

p max_depth(s = "(1)+((2))+(((3)))")




