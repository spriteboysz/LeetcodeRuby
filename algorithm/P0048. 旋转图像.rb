# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 22:30
# FilePath: P0048. 旋转图像.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
    matrix.reverse.transpose.each_with_index do |row, i|
        row.each_with_index do |v, j|
            matrix[i][j] = v
        end
    end
    matrix
end

if __FILE__ == $PROGRAM_NAME
    p rotate([[5, 1, 9, 11], [2, 4, 8, 10], [13, 3, 6, 7], [15, 14, 12, 16]])
end


