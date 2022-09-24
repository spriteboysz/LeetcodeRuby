# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 22:15
# FilePath: P0953. 验证外星语词典.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @param {String} order
# @return {Boolean}
def is_alien_sorted(words, order)
    hash = Hash.new(0)
    order.chars.each_with_index { |c, i| hash[c] = i }
    words.sort_by { |word|
        num = 0
        word.each_char { |c| num |= 1 << hash[c] }
        num
    }
end

if __FILE__ == $PROGRAM_NAME
    p is_alien_sorted(words = %w[word world row], order = "worldabcefghijkmnpqstuvxyz")
    p is_alien_sorted(%w[ubg kwh], "qcipyamwvdjtesbghlorufnkzx")
end
