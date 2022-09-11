# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 16:57
# FilePath: P0804. 唯一摩尔斯密码词.rb
# Description: 

# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
    map = %w[.- -... -.-. -.. . ..-. --. .... .. .--- -.- .-.. -- -. --- .--. --.- .-. ... - ..- ...- .-- -..- -.-- --..]
    encoded = []
    words.each { |word|
        index = word.each_byte.map { |c| c - "a".ord }
        s = ""
        index.each { |i| s += map[i] }
        encoded.append(s)
    }
    encoded.uniq.length
end

p unique_morse_representations(words = ["gin", "zen", "gig", "msg"])



