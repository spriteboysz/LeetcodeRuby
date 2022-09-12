# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 16:54
# FilePath: P1880. 检查某单词是否等于两单词之和.rb
# Description: 

# @param {String} first_word
# @param {String} second_word
# @param {String} target_word
# @return {Boolean}
def is_sum_equal(first_word, second_word, target_word)
    process(first_word) + process(second_word) == process(target_word)
end

def process(word)
    num = 0
    word.chars.each { |c| num = num * 10 + c.ord - 97 }
    num
end

p is_sum_equal(first_word = "aaa", second_word = "a", target_word = "aab")
p is_sum_equal(first_word = "aaa", second_word = "a", target_word = "aaaa")



