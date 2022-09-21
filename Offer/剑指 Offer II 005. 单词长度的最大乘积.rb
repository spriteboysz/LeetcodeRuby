# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 23:17
# FilePath: 剑指 Offer II 005. 单词长度的最大乘积.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @return {Integer}
def max_product(words)
    hash = Hash.new(0)
    words.each do |word|
        num = 0
        word.each_char { |c|
            num |= 1 << (c.ord - 97)
        }
        hash[word] = num
    end
    maximum = 0
    (0..words.length - 2).each do |i|
        (i + 1..words.length - 1).each { |j|
            maximum = [maximum, words[i].length * words[j].length].max if hash[words[i]] & hash[words[j]] == 0
        }
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p max_product(words = %w[a ab abc d cd bcd abcd])
end
