# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 20:34
# FilePath: P1551. 使数组中所有元素相等的最小操作数.rb
# Description: 

# @param {Integer} n
# @return {Integer}
def min_operations(n)
    cnt = 0
    (0...n).each { |i|
        x = 2 * i + 1
        cnt += x - n if x > n
    }
    cnt
end

p min_operations(6)



