# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 14:41
# FilePath: P0357. 统计各位数字都不同的数字个数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def count_numbers_with_unique_digits(n)
    return 1 if n == 0
    return 10 if n == 1
    sum, res = 9 + 1, 9
    (0...n-1).each { |i|
        res *= 9 - i
        sum += res
    }
    sum
end

if __FILE__ == $PROGRAM_NAME
    p count_numbers_with_unique_digits(2)
end


