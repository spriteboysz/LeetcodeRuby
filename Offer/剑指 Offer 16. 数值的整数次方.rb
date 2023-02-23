# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-22 23:19
# FilePath: 剑指 Offer 16. 数值的整数次方.rb
# Description:

load "common/leetcode.rb"

# @param {Float} x
# @param {Integer} n
# @return {Float}
def my_pow(x, n)
    return 0 if n == 0
    ans = 1
    x, n = 1.0 / x, -n if n < 0
    while n > 0
        ans *= x unless n & 1 == 0
        x *= x
        n >>= 1
    end
    ans
end

if __FILE__ == $PROGRAM_NAME
    p my_pow(x = 2.00000, n = -2)
end


