# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 22:59
# FilePath: P1451. 重新排列句子中的单词.rb
# Description:

load "common/leetcode.rb"

# @param {String} text
# @return {String}
def arrange_words(text)
    words = text.downcase.split
    words.sort_by! { |word| word.length }
    words.join(" ").capitalize
end

if __FILE__ == $PROGRAM_NAME
    p arrange_words(text = "To be or not to be")
end
