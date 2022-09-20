# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-20 23:27
# FilePath: P1380. 矩阵中的幸运数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers(matrix)
    row_min = matrix.map(&:min)
    col_max = matrix.transpose.map(&:max)
    lucky, m, n = [], matrix.length, matrix[0].length
    (0...m).each do |i|
        (0...n).each do |j|
            num = matrix[i][j]
            lucky << num if num == row_min[i] && num == col_max[j]
        end
    end
    lucky
end

if __FILE__ == $PROGRAM_NAME
    p lucky_numbers(matrix = [[1, 10, 4, 2], [9, 3, 8, 7], [15, 16, 17, 12]])
end
