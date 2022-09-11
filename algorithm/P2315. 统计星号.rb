# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 13:34
# FilePath: P2315. 统计星号.rb
# Description: 

# @param {String} s
# @return {Integer}
def count_asterisks(s)
    cnt, delimiter = 0, 0
    s.chars.each { |c|
        cnt += 1 if delimiter % 2 == 0 && c == '*'
        delimiter += 1 if c == '|'
    }
    cnt
end

p count_asterisks(s = "yo|uar|e**|b|e***au|tifu|l")



