# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-19 12:54
# FilePath: P0463. 岛屿的周长.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
    perimeter, m, n = 0, grid.size, grid[0].size
    directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]
    grid.each_with_index { |row, i|
        row.each_with_index { |num, j|
            next if num == 0
            directions.each { |dx, dy|
                x, y = i + dx, j + dy
                if x < 0 || y < 0 || x >= m || y >= n || grid[x][y] == 0
                    perimeter += 1
                end
            }
        }
    }
    perimeter
end

if __FILE__ == $PROGRAM_NAME
    p island_perimeter(grid = [[0, 1, 0, 0], [1, 1, 1, 0], [0, 1, 0, 0], [1, 1, 0, 0]])
end


