# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 23:39
# FilePath: P0064. 最小路径和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def min_path_sum(grid)
    m, n = grid.length, grid[0].length
    (0...m).each do |i|
        (0...n).each do |j|
            next if i == 0 && j == 0
            grid[i][j] += if i == 0
                              grid[i][j - 1]
                          elsif j == 0
                              grid[i - 1][j]
                          else
                              [grid[i][j - 1], grid[i - 1][j]].min
                          end
        end
    end
    grid.last.last
end

if __FILE__ == $PROGRAM_NAME
    p min_path_sum([[1, 3, 1], [1, 5, 1], [4, 2, 1]])
end
