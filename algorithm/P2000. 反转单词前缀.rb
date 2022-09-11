# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:01
# FilePath: P2000. 反转单词前缀.rb
# Description: 

# @param {String} word
# @param {Character} ch
# @return {String}
def reverse_prefix(word, ch)
    index = 0
    word.chars.each_with_index { |c, i|
        if ch == c
            index = i
            break
        end
    }
    word[..index].reverse + word[index + 1..]
end

p reverse_prefix("xyxzxe", ch = "z")
p reverse_prefix(word = "abcd", ch = "z")



