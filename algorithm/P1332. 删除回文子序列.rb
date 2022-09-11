# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:43
# FilePath: P1332. 删除回文子序列.rb
# Description: 

# @param {String} s
# @return {Integer}
def remove_palindrome_sub(s)
    s.reverse == s ? 1 : 2
end

p remove_palindrome_sub(s = "ababa")
p remove_palindrome_sub(s = "ababaaaa")



