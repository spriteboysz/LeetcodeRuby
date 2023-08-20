# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-19 13:31
# FilePath: LCR 105. 岛屿的最大面积.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def max_area_of_island(grid)
    @grid = grid

    def dfs(i, j)
        res, @grid[i][j] = 1, 0
        [[i + 1, j], [i - 1, j], [i, j + 1], [i, j - 1]].each { |x, y|
            if x >= 0 and x < @grid.size and y >= 0 and y < @grid[0].size and @grid[x][y] == 1
                res += dfs(x, y)
            end
        }
        res
    end

    maximum, m, n = 0, grid.size, grid[0].size
    (0...m).each { |i|
        (0...n).each { |j|
            if grid[i][j] == 1
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


