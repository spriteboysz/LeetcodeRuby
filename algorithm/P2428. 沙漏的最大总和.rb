# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-30 23:31
# FilePath: P2428. 沙漏的最大总和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def max_sum(grid)
    offset = [[0, 0], [0, 1], [0, 2], [1, 1], [2, 0], [2, 1], [2, 2]]
    maximum, m, n = 0, grid.size, grid[0].size
    (0...m).each do |i|
        (0...n).each do |j|
            cur = 0
            (0..6).each do |row|
                x, y = offset[row]
                if i + x >= m || j + y >= n
                    cur = 0
                    next
                end
                cur += grid[i + x][j + y]
            end
            maximum = cur if cur > maximum
        end
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    # p max_sum([[6, 2, 1, 3], [4, 2, 1, 5], [9, 2, 8, 7], [4, 1, 2, 9]])
    p max_sum([[520626, 685427, 788912, 800638, 717251, 683428],
               [23602, 608915, 697585, 957500, 154778, 209236],
               [287585, 588801, 818234, 73530, 939116, 252369]])
end
