# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 18:14
# FilePath: P0500. 键盘行.rb
# Description: 

# @param {String[]} words
# @return {String[]}
def find_words(words)
    hash = Hash.new(0)
    "qwertyuiop".chars.each { |c| hash[c] = 1 }
    "asdfghjkl".chars.each { |c| hash[c] = 2 }
    "zxcvbnm".chars.each { |c| hash[c] = 3 }
    words.select { |word|
        word.chars.map { |c| hash[c.downcase] }.uniq.length == 1
    }
end

p find_words(words = ["omk"])
p find_words(words = %w[adsdf sfd])



