# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 17:05
# FilePath: P1784. 检查二进制字符串字段.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def check_ones_segment(s)
    !s.include?("01")
end

if __FILE__ == $PROGRAM_NAME
    p check_ones_segment(s = "1001")
end
