# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:14
# FilePath: P0867. 转置矩阵.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @return {Integer[][]}
def transpose(matrix)
    matrix.transpose
end

if __FILE__ == $PROGRAM_NAME
    p transpose(matrix = [[1, 2, 3], [4, 5, 6]])
end
