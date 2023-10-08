# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 11:18
# FilePath: 剑指 Offer II 034. 外星语言是否排序.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
    hash = Hash.new(0)
    order.chars.each_with_index { |c, i| hash[c] = i }
    words.sort_by { |word|
        word.chars.map { |c| hash[c] }.to_a
    } == words
end

if __FILE__ == $PROGRAM_NAME
    p is_alien_sorted(words = %w[target world row], order = "worldabcefghijkmnpqstuvxyz")
end
