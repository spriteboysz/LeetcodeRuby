# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:38
# FilePath: P0766. 托普利茨矩阵.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
    m, n = matrix.length, matrix[0].length
    (1...m).each do |i|
        (1...n).each do |j|
            return false if matrix[i][j] != matrix[i - 1][j - 1]
        end
    end
    true
end

if __FILE__ == $PROGRAM_NAME
    p is_toeplitz_matrix(matrix = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 2]])
end
