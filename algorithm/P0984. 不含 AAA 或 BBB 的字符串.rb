# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-13 22:46
# FilePath: P0984. 不含 AAA 或 BBB 的字符串.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} a
# @param {Integer} b
# @return {String}
def str_without3a3b(a, b)
    m, n, s = a, b, ""
    while m != 0 and n != 0
        if m > n
            s += 'aab'
            m, n = m - 2, n - 1
        elsif n > m
            s += 'bba'
            m, n = m - 1, n - 2
        else
            s += 'ab'
            m, n = m - 1, n - 1
        end
    end
    if m == 0 and n == 0
        return s
    elsif n == 0
        s += 'a' * m
        return s
    else
        s += 'b' * n
    end
    s
end

if __FILE__ == $PROGRAM_NAME
    p str_without3a3b(4, 1)
end


