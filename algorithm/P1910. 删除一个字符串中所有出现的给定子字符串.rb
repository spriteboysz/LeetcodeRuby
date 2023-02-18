# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-17 23:33
# FilePath: P1910. 删除一个字符串中所有出现的给定子字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} part
# @return {String}
def remove_occurrences(s, part)
    s.sub!(part, '') while s.include?(part)
    s
end

if __FILE__ == $PROGRAM_NAME
    p remove_occurrences(s = "daabcbaabcbc", part = "abc")
end


