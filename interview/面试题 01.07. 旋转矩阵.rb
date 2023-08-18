# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-18 23:37
# FilePath: 面试题 01.07. 旋转矩阵.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def rotate(matrix)
    n = matrix.length
    (0...n).each { |i|
        (0...i).each { |j|
            temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        }
    }
    (0...n).each { |i|
        (0...n / 2).each { |j|
            temp = matrix[i][j]
            matrix[i][j] = matrix[i][n - 1 - j]
            matrix[i][n - 1 - j] = temp
        }
    }
    p matrix
end

if __FILE__ == $PROGRAM_NAME
    rotate(matrix =
               [[5, 1, 9, 11],
                [2, 4, 8, 10],
                [13, 3, 6, 7],
                [15, 14, 12, 16]])
end


