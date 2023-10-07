# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 15:17
# FilePath: LCR 034. 验证外星语词典.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
    hash = Hash.new(0)
    order.chars.each_with_index { |c, i| hash[c] = i }
    words.sort_by { |word|
        word.chars.map { |c| hash[c] }
    } == words
end

if __FILE__ == $PROGRAM_NAME
    p is_alien_sorted(words = ["hello", "leetcode"], order = "hlabcdefgijkmnopqrstuvwxyz")
end


