# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 13:58
# FilePath: P2243. 计算字符串的数字和.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {Integer} k
# @return {String}
def digit_sum(s, k)
    while s.length != k
        p s.split
    end
end

if __FILE__ == $PROGRAM_NAME
    p digit_sum(s = "11111222223", k = 3)
end
