# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-02 23:08
# FilePath: P0806. 写字符串需要的行数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
    rows, cur = 1, 0
    s.chars.each do |c|
        width = widths[c.ord - 97]
        if cur + width > 100
            rows += 1
            cur = width
        else
            cur += width
        end
    end
    [rows, cur]
end

if __FILE__ == $PROGRAM_NAME
    p number_of_lines(widths = [4, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10],
                      s = "bbbcccdddaaa")
end
