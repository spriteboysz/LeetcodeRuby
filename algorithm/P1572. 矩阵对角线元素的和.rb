# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 17:18
# FilePath: P1572. 矩阵对角线元素的和.rb
# Description: 

# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
    sum, n = 0, mat.length
    mat.each_with_index { |row, i| sum += row[i] + row[n - 1 - i] }
    n % 2 == 0 ? sum : sum - mat[n / 2][n / 2]
end

p diagonal_sum(mat = [[1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1], [1, 1, 1, 1]])



