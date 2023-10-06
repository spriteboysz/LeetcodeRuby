# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-04 21:08
# FilePath: LCR 005. 最大单词长度乘积.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @return {Integer}
def max_product(words)
    hash = Hash.new(0)
    words.each { |word|
        word.each_char { |c|
            hash[word] |= 1 << (c.ord - 'a'.ord)
        }
    }
    maximum = 0
    words.each_with_index { |word1, i|
        words.each_with_index { |word2, j|
            next if j <= i
            maximum = [maximum, word1.size * word2.size].max if hash[word1] & hash[word2] == 0
        }
    }
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p max_product(words = ["abcw", "baz", "foo", "bar", "fxyz", "abcdef"])
    p max_product(words = ["a", "ab", "abc", "d", "cd", "bcd", "abcd"])
end


