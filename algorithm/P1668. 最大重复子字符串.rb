# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-28 22:52
# FilePath: P1668. 最大重复子字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} sequence
# @param {String} word
# @return {Integer}
def max_repeating(sequence, word)
    (sequence.size / word.size).step(0, -1).each { |i|
        return i if sequence.include?(word * i)
    }
end

if __FILE__ == $PROGRAM_NAME
    p max_repeating(sequence = "ababc", word = "ab")
end


