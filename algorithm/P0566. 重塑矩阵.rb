# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 23:15
# FilePath: P0566. 重塑矩阵.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
    m, n = mat.length, mat[0].length
    return mat if (m == r && n == c) || (m * n != r * c)
    mat = mat.flatten
    mat2 = []
    (0...r).each do |i|
        mat2 << mat[i * c..i * c + c - 1]
    end
    mat2
end

if __FILE__ == $PROGRAM_NAME
    p matrix_reshape(mat = [[1, 2], [3, 4]], r = 1, c = 4)
    p matrix_reshape(mat = [[1, 2], [3, 4]], r = 2, c = 4)
end
