# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 22:16
# FilePath: P2273. 移除字母异位词后的结果数组.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @return {String[]}
def remove_anagrams(words)
    target = []
    words.each do |word|
        next if !target.empty? && target[-1].chars.sort == word.chars.sort
        target << word
    end
    target
end

if __FILE__ == $PROGRAM_NAME
    p remove_anagrams(words = %w[abba baba bbaa cd cd])
end
