# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-18 21:25
# FilePath: 面试题 16.05. 阶乘尾数.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
    cnt = 0
    while n > 0
        n /= 5
        cnt += n
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p trailing_zeroes(5)
end


