# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 14:17
# FilePath: P0240. 搜索二维矩阵 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    return false if matrix.empty? or matrix[0].empty?
    row, col = matrix.length - 1, 0
    while row >= 0 and col < matrix[0].length
        if matrix[row][col] < target
            col += 1
        elsif matrix[row][col] > target
            row -= 1
        else
            return true
        end
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p search_matrix(matrix = [[1, 4, 7, 11, 15],
                              [2, 5, 8, 12, 19],
                              [3, 6, 9, 16, 22],
                              [10, 13, 14, 17, 24],
                              [18, 21, 23, 26, 30]], target = 5)
end


