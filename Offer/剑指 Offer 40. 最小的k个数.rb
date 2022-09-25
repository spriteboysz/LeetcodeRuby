# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 10:56
# FilePath: 剑指 Offer 40. 最小的k个数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer[]}
def get_least_numbers(arr, k)
    k == 0 ? [] : arr.min(k)
end

if __FILE__ == $PROGRAM_NAME
    p get_least_numbers(arr = [0, 1, 2, 1], k = 1)
end
