# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 16:26
# FilePath: 剑指 Offer 29. 顺时针打印矩阵.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
    nums = []
    until matrix.empty?
        nums << matrix.shift
        matrix = matrix.transpose
        matrix.reverse!
    end
    nums.flatten
end

if __FILE__ == $PROGRAM_NAME
    p spiral_order([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
end


