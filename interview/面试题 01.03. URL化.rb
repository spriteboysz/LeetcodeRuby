# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 22:43
# FilePath: 面试题 01.03. URL化.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {Integer} length
# @return {String}
def replace_spaces(s, length)
    n = s.rstrip.length
    s.rstrip.gsub(" ", "%20") + "%20" * (length - n)
end

if __FILE__ == $PROGRAM_NAME
    p replace_spaces("Mr John Smith    ", 13)
    p replace_spaces("LqyuIZCuyRyvllekBuYNUZDrCzHCXeeUmZAfgIvHxzFgLCkLLzDBdfJh", 56)
end
