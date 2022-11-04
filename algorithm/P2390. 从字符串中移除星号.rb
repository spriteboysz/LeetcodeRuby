# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-04 23:39
# FilePath: P2390. 从字符串中移除星号.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def remove_stars(s)
    stack = []
    s.each_char do |c|
        if c == "*"
            stack.pop unless stack.empty?
        else
            stack << c
        end
    end
    stack.join("")
end

if __FILE__ == $PROGRAM_NAME
    p remove_stars("erase*****")
end
