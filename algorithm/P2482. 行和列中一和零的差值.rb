# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 16:38
# FilePath: P2482. 行和列中一和零的差值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer[][]}
def ones_minus_zeros(grid)
    rows, cols = [0] * grid.length, [0] * grid[0].length
    grid.each_with_index do |row, i|
        row.each_with_index do |v, j|
            rows[i] += v * 2 - 1
            cols[j] += v * 2 - 1
        end
    end
    rows.each_with_index do |x, i|
        cols.each_with_index do |y, j|
            grid[i][j] = x + y
        end
    end
    grid
end

if __FILE__ == $PROGRAM_NAME
    p ones_minus_zeros(grid = [[0, 1, 1], [1, 0, 1], [0, 0, 1]])
end


