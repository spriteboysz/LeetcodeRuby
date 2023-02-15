# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 11:37
# FilePath: 面试题 16.20. T9键盘.rb
# Description:

load "common/leetcode.rb"

# @param {String} num
# @param {String[]} words
# @return {String[]}
def get_valid_t9_words(num, words)
    chars = %w[abc def ghi jkl mno pqrs tuv wxyz]
    hash = Hash.new
    (2..9).each { |key| hash[key] = chars[key - 2] }
    valid = []
    words.each { |word|
        flag = true
        word.chars.each_with_index { |c, i|
            unless hash[num[i].to_i].include?(c)
                flag = false
                break
            end
        }
        valid << word if flag
    }
    valid
end

if __FILE__ == $PROGRAM_NAME
    p get_valid_t9_words(num = "8733", words = %w[tree used])
end


