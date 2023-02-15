# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-14 23:16
# FilePath: 面试题 17.14. 最小K个数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer[]}
def smallest_k(arr, k)
    arr.sort[0, k]
end

if __FILE__ == $PROGRAM_NAME
    p smallest_k(arr = [1, 3, 5, 7, 2, 4, 6, 8], k = 4)
end


