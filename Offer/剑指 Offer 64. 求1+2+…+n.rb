# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 22:55
# FilePath: 剑指 Offer 64. 求1+2+…+n.rb
# Description:

# @param {Integer} n
# @return {Integer}
def sum_nums(n)
    return 1 if n == 1
    sum_nums(n - 1) + n
end

# test
p sum_nums(9)



