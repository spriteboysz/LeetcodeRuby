# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 22:17
# FilePath: P0367. 有效的完全平方数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
    x = 1
    while x * x <= num
        return true if x * x == num
        x += 1
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p is_perfect_square(16)
end
