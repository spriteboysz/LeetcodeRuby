# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 23:38
# FilePath: P0020. 有效的括号.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def is_valid(s)
    stack = []
    s.chars.each do |c|
        if stack.length > 0 && (c == ")" && stack.last == "(" || c == "]" && stack.last == "[" || c == "}" && stack.last == "{")
            stack.pop
        else
            stack << c
        end
    end
    stack.length == 0
end

if __FILE__ == $PROGRAM_NAME
    p is_valid(s = "()[]{}")
    p is_valid("({[)")
end
