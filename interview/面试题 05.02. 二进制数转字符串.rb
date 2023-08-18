# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-18 21:58
# FilePath: 面试题 05.02. 二进制数转字符串.rb
# Description:

load "common/leetcode.rb"
# @param {Float} num
# @return {String}
def print_bin(num)
    ss = "0."
    while num == 0
        digit = (num * 2).to_i
        ss += digit.to_s
        num = num * 2 - digit
        return "ERROR" if ss.length > 32
    end
    ss
end

if __FILE__ == $PROGRAM_NAME
    p print_bin(0.625)
end


