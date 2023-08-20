# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 14:59
# FilePath: 面试题 01.08. 零矩阵.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @return {Void} Do not return anything, modify matrix in-place instead.
def set_zeroes(matrix)
    rows, cols = [], []
    matrix.each_with_index { |row, i|
        row.each_with_index { |num, j|
            if num == 0
                rows << i
                cols << j
            end
        }
    }
    rows.uniq!
    cols.uniq!
    matrix.each_with_index { |row, i|
        row.each_with_index { |_, j|
            if rows.include?(i) or cols.include?(j)
                matrix[i][j] = 0
            end
        }
    }
    p matrix
end

if __FILE__ == $PROGRAM_NAME
    set_zeroes([
                   [0, 1, 2, 0],
                   [3, 4, 5, 2],
                   [1, 3, 1, 5]
               ])
end


