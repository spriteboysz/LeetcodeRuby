# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 20:19
# FilePath: P1592. 重新排列单词间的空格.rb
# Description:

load "common/leetcode.rb"

# @param {String} text
# @return {String}
def reorder_spaces(text)
    cnt = text.count(" ")
    words = text.strip.split
    n = words.length - 1
    return text if cnt == 0
    return words[0] + " " * cnt if n == 0
    words.join(" " * (cnt / n)) + " " * (cnt % n)
end

if __FILE__ == $PROGRAM_NAME
    p reorder_spaces(text = " practice   makes   perfect")
end
