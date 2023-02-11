# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-10 22:14
# FilePath: P1576. 替换所有的问号.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def modify_string(s)
    s.each_char.with_index do |c, i|
        s[i] = (?a..?z).find { |cc| cc != s[i - 1] && cc != s[i + 1] } if c == "?"
    end
    s
end

if __FILE__ == $PROGRAM_NAME
    p modify_string(s = "ubv?w")
end


