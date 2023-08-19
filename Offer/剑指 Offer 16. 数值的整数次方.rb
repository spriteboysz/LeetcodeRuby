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
    def fast_pow(x, n, sign, &op)
        return 1.0 if n == 0
        n % 2 == 0 ? fast_pow(x, n / 2, sign, &op) ** 2 : op[fast_pow(x, n - sign, sign, &op), x]
    end

    n > 0 ? fast_pow(x, n, 1, &:*) : fast_pow(x, n, -1, &:/)
end

if __FILE__ == $PROGRAM_NAME
    p my_pow(x = 2.00000, n = -2)
end


