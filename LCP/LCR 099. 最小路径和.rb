# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 23:28
# FilePath: LCR 099. 最小路径和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
    m, n = grid.size, grid[0].size
    (0...m).each { |i|
        (0...n).each { |j|
            if i == 0 and j == 0
                next
            elsif i == 0
                grid[i][j] += grid[i][j - 1]
            elsif j == 0
                grid[i][j] += grid[i - 1][j]
            else
                grid[i][j] += [grid[i][j - 1], grid[i - 1][j]].min
            end
        }
    }
    grid[-1].last
end

if __FILE__ == $PROGRAM_NAME
    p min_path_sum(grid = [[1, 3, 1], [1, 5, 1], [4, 2, 1]])
end


