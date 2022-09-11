# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 18:05
# FilePath: P1832. 判断句子是否为全字母句.rb
# Description: 

# @param {String} sentence
# @return {Boolean}
def check_if_pangram(sentence)
    sentence.chars.uniq.length == 26
end

p check_if_pangram(sentence = "thequickbrownfoxjumpsoverthelazydog")



