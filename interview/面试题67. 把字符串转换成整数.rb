# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-14 22:54
# FilePath: 面试题67. 把字符串转换成整数.rb
# Description:

load "common/leetcode.rb"

# @param {String} str
# @return {Integer}
def str_to_int(str)
    num = str.to_i
    if num > 2 ** 31 - 1
        2 ** 31 - 1
    elsif num < -2 ** 31
        -2 ** 31
    else
        num
    end
end

if __FILE__ == $PROGRAM_NAME
    p str_to_int("words and 987")
    p str_to_int("-91283472332")
end


