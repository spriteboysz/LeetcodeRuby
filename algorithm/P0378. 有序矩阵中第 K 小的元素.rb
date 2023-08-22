# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 15:27
# FilePath: P0378. 有序矩阵中第 K 小的元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest(matrix, k)
    matrix.flatten.sort[k - 1]
end

if __FILE__ == $PROGRAM_NAME
    p kth_smallest(matrix = [[1, 5, 9], [10, 11, 13], [12, 13, 15]], k = 8)
end


