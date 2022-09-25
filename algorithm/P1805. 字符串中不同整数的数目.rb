# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 16:53
# FilePath: P1805. 字符串中不同整数的数目.rb
# Description:

load "common/leetcode.rb"

# @param {String} word
# @return {Integer}
def num_different_integers(word)
    word.split(/[a-z]+/).select { |w| w != "" }.map(&:to_i).uniq.length
end

if __FILE__ == $PROGRAM_NAME
    p num_different_integers(word = "leet1234code234")
end
