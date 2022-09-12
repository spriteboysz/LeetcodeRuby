# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 16:38
# FilePath: P1704. 判断字符串的两半是否相似.rb
# Description: 

# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
    vowels = "aeiou"
    n = s.length
    s[...n / 2].chars.select { |x| vowels.include?(x.downcase) }.length ==
        s[n / 2..].chars.select { |x| vowels.include?(x.downcase) }.length
end

p = halves_are_alike(s = "book")
p = halves_are_alike(s = "textbook")



