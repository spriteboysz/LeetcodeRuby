# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:58
# FilePath: P2108. 找出数组中的第一个回文字符串.rb
# Description: 

# @param {String[]} words
# @return {String}
def first_palindrome(words)
    words.each { |word| return word if word.reverse == word }
    ""
end

p first_palindrome(words = %w[notapalindrome racecar])



