# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 22:43
# FilePath: P2744. 最大字符串配对数目.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @return {Integer}
def maximum_number_of_string_pairs(words)
    cnt = 0
    (0...words.size).each { |i|
        (i + 1...words.size).each { |j|
            cnt += 1 if words[i][0] == words[j][1] && words[i][1] == words[j][0]
        }
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p maximum_number_of_string_pairs(words = ["cd", "ac", "dc", "ca", "zz"])
end


