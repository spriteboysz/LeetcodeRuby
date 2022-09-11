# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 09:39
# FilePath: P1221. 分割平衡字符串.rb
# Description: 1221. 分割平衡字符串

# @param {String} s
# @return {Integer}
def balanced_string_split(s)
    cnt, balance = 0, 0
    s.chars.each { |c|
        balance += 1 if c == 'R'
        balance -= 1 if c == 'L'
        cnt += 1 if balance == 0
    }
    cnt
end

p balanced_string_split(s = "RLLLLRRRLR")



