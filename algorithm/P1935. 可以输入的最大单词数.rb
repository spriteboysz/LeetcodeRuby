# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-15 23:32
# FilePath: P1935. 可以输入的最大单词数.rb
# Description:

load "common/leetcode.rb"

# @param {String} text
# @param {String} broken_letters
# @return {Integer}
def can_be_typed_words(text, broken_letters)
    cnt = 0
    text.split.each { |word|
        flag = true
        broken_letters.each_char { |c|
            if word.include?(c)
                flag = false
                break
            end
        }
        cnt += 1 if flag
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    text = "leet code"
    broken_letters = "lt"
    p can_be_typed_words(text, broken_letters)
end




