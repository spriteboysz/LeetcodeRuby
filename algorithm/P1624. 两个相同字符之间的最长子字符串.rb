# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-05 22:54
# FilePath: P1624. 两个相同字符之间的最长子字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def max_length_between_equal_characters(s)
    first, last = Array.new(26, -1), Array.new(26, -1)
    s.chars.each_with_index do |c, i|
        index = c.ord - 97
        if first[index] != -1
            last[index] = i
        else
            first[index] = i
        end
    end
    maximum = 0
    (0...26).each do |i|
        maximum = [maximum, last[i] - first[i]].max
    end
    maximum - 1
end

if __FILE__ == $PROGRAM_NAME
    p max_length_between_equal_characters("cbzxy")
    p max_length_between_equal_characters("cabbac")
end
