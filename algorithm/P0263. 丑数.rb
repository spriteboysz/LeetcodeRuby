# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 10:47
# FilePath: P0263. 丑数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def is_ugly(n)
    return false if n <= 0
    n /= 2 while n % 2 == 0
    n /= 3 while n % 3 == 0
    n /= 5 while n % 5 == 0
    n == 1
end

if __FILE__ == $PROGRAM_NAME
    p is_ugly(16)
end
