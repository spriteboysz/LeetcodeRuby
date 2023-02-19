# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 17:38
# FilePath: P0073. 矩阵置零.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
    rows, cols = [], []
    matrix.each_with_index do |row, i|
        row.each_with_index { |v, j|
            rows << i if v == 0
            cols << j if v == 0
        }
    end
    rows.uniq!
    cols.uniq!
    matrix.each_with_index do |row, i|
        row.each_with_index do |_, j|
            matrix[i][j] = 0 if rows.include?(i) || cols.include?(j)
        end
    end
    matrix
end

if __FILE__ == $PROGRAM_NAME
    p set_zeroes([[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]])
end


