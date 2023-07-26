# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-25 22:59
# FilePath: P2062. 统计字符串中的元音子字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} word
# @return {Integer}
def count_vowel_substrings(word)
    cnt = 0
    (0...word.size - 4).each { |i|
        (i...word.size + 1).each { |j|
            if word[i...j].chars.uniq.sort.join == "aeiou"
                cnt += 1
            end
        }
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_vowel_substrings(word = "aeiouu")
end


