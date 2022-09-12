# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 18:01
# FilePath: P1351. 统计有序矩阵中的负数.rb
# Description: 

# @param {Integer[][]} grid
# @return {Integer}
def count_negatives(grid)
    grid.flatten.count { |num| num < 0 }
end

p count_negatives(grid = [[4, 3, 2, -1], [3, 2, 1, -1], [1, 1, -1, -2], [-1, -1, -2, -3]])
p count_negatives(grid = [[3, 2], [1, 0]])



