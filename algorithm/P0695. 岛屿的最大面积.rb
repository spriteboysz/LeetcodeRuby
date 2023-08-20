# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-19 14:52
# FilePath: P0695. 岛屿的最大面积.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
    @grid = grid

    def dfs(i, j)
        area, @grid[i][j] = 1, 0
        [[i + 1, j], [i - 1, j], [i, j + 1], [i, j - 1]].each { |x, y|
            if x >= 0 and x < @grid.size and y >= 0 and y < @grid[0].size and @grid[x][y] == 1
                area += dfs(x, y)
            end
        }
        area
    end

    maximum = 0
    grid.each_with_index { |row, i|
        row.each_with_index { |num, j|
            if num == 1
                maximum = [maximum, dfs(i, j)].max
            end
        }
    }
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p max_area_of_island([
                             [0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0],
                             [0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
                             [0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0],
                             [0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0],
                             [0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0]])
end


