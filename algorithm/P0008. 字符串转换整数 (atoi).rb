# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 22:18
# FilePath: P0008. 字符串转换整数 (atoi).rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def my_atoi(s)
    x = s.to_i
    return -(2 ** 31) if x < -(2 ** 31)
    return  2 ** 31 - 1 if x > 2 ** 31 - 1
    x
end

if __FILE__ == $PROGRAM_NAME
    p my_atoi("4193 with words")
    p my_atoi("    -4321")
end


