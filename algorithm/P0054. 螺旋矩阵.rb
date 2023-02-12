# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 22:40
# FilePath: P0054. 螺旋矩阵.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @return {Integer[]}
def spiral_order(matrix)
    grid = []
    until matrix.empty?
        grid.concat(matrix.shift)
        matrix = matrix.transpose
        matrix.reverse!
    end
    grid
end

if __FILE__ == $PROGRAM_NAME
    p spiral_order([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
end


