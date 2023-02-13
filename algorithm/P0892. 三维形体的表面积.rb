# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 22:25
# FilePath: P0892. 三维形体的表面积.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def surface_area(grid)
    area = 0
    grid.each_with_index { |row, i|
        row.each_with_index { |v, j|
            next unless v > 0
            area += v * 2 + 1
            area -= [grid[i - 1][j], v].min if i > 0
            area -= [grid[i][j - 1], v].min if j > 0
        }
    }
    area * 2
end

if __FILE__ == $PROGRAM_NAME
    p surface_area([[1, 1, 1], [1, 0, 1], [1, 1, 1]])
end


