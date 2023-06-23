# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 21:05
# FilePath: P2716. 最小化字符串长度.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def minimized_string_length(s)
    s.chars.uniq.size
end

if __FILE__ == $PROGRAM_NAME
    p minimized_string_length(s = "aaabc")
end


