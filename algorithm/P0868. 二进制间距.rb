# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 21:44
# FilePath: P0868. 二进制间距.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def binary_gap(n)
    a, b, i = [], [], 0
    while n > 0
        a << i if n & 1 == 1
        i += 1
        n = n >> 1
    end
    return 0 if a.length == 1
    (1...a.length).each { |j|
        b << a[j] - a[j - 1]
    }
    b.max
end

if __FILE__ == $PROGRAM_NAME
    p binary_gap(22)
    p binary_gap(5)
    p binary_gap(12)
end


