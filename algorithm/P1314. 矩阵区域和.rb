# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-30 22:54
# FilePath: P1314. 矩阵区域和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} mat
# @param {Integer} k
# @return {Integer[][]}
def matrix_block_sum(mat, k)
    m, n = mat.size, mat[0].size
    block = []
    (0...m).each do |i|
        row = []
        (0...n).each do |j|
            sum = 0
            (-k..k).each do |di|
                next if i + di < 0 || i + di >= m
                (-k..k).each do |dj|
                    next if j + dj < 0 || j + dj >= n
                    sum += mat[i + di][j + dj]
                end
            end
            row << sum
        end
        block << row
    end
    block
end

if __FILE__ == $PROGRAM_NAME
    p matrix_block_sum(mat = [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k = 1)
    # p matrix_block_sum(mat = [[1, 2, 3], [4, 5, 6], [7, 8, 9]], k = 2)
end
