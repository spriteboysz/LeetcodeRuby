# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 22:56
# FilePath: P0807. 保持城市天际线.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def max_increase_keeping_skyline(grid)
    row_max = grid.map { |v| v.max }
    col_max = grid.transpose.map { |v| v.max }
    n, sum = grid.length, 0
    (0...n).each do |i|
        (0...n).each do |j|
            sum += [row_max[i], col_max[j]].min - grid[i][j]
        end
    end
    sum
end

if __FILE__ == $PROGRAM_NAME
    p max_increase_keeping_skyline(grid = [[3, 0, 8, 4], [2, 4, 5, 7], [9, 2, 6, 3], [0, 3, 1, 0]])
end
