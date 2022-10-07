# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 11:24
# FilePath: P2109. 向字符串添加空格.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {Integer[]} spaces
# @return {String}
def add_spaces(s, spaces)
    ss, index = [], 0
    s.chars.each_with_index do |c, i|
        if i == spaces[index]
            ss << " "
            index += 1
        end
        ss << c
    end
    ss.join
end

if __FILE__ == $PROGRAM_NAME
    p add_spaces(s = "icodeinpython", spaces = [1, 5, 7, 9])
end
