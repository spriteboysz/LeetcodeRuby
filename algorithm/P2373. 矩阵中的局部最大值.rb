# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:42
# FilePath: P2373. 矩阵中的局部最大值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer[][]}
def largest_local(grid)
    n = grid.length
    grid2 = Array.new(n - 2) { Array.new(n - 2, 0) }
    (1..n - 2).each do |i|
        (1..n - 2).each do |j|
            cur = []
            (-1..1).each { |k| cur << grid[i + k][j - 1..j + 1].max }
            grid2[i - 1][j - 1] = cur.max
        end
    end
    grid2
end

if __FILE__ == $PROGRAM_NAME
    p largest_local(grid = [[9, 9, 8, 1],
                            [5, 6, 2, 6],
                            [8, 2, 6, 4],
                            [6, 2, 2, 2]])
end
