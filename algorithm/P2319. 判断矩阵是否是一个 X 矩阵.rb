# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 22:58
# FilePath: P2319. 判断矩阵是否是一个 X 矩阵.rb
# Description: 

# @param {Integer[][]} grid
# @return {Boolean}
def check_x_matrix(grid)
    n = grid.length
    (0...n).each { |i|
        (0...n).each { |j| j
        if i == j or i + j == n - 1
            return false if grid[i][j] == 0
        else
            return false if grid[i][j] != 0
        end
        }
    }
    true
end

p check_x_matrix(grid = [[2, 0, 0, 1], [0, 3, 1, 0], [0, 5, 2, 0], [4, 0, 0, 2]])
p check_x_matrix(grid = [[5, 7, 0], [0, 3, 1], [0, 5, 0]])



