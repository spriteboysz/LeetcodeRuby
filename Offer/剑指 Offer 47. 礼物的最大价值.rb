# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-04 22:17
# FilePath: 剑指 Offer 47. 礼物的最大价值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def max_value(grid)
    (0...grid.size).each do |i|
        (0...grid[0].size).each do |j|
            next if i == 0 && j == 0
            grid[i][j] += grid[i][j - 1] if i == 0
            grid[i][j] += grid[i - 1][j] if j == 0
            grid[i][j] += [grid[i][j - 1], grid[i - 1][j]].max if i != 0 && j != 0
        end
    end
    grid[-1][-1]
end

if __FILE__ == $PROGRAM_NAME
    p max_value([[1, 3, 1], [1, 5, 1], [4, 2, 1]])
end
