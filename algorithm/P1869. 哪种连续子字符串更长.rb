# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 23:44
# FilePath: P1869. 哪种连续子字符串更长.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def check_zero_ones(s)
    return true unless s.include?("0")
    return false unless s.include?("1")
    s.split(/1+/).map { |el| el.length }.max < s.split(/0+/).map { |el| el.length }.max
end

if __FILE__ == $PROGRAM_NAME
    p check_zero_ones("1101")
    p check_zero_ones("111000")
end
