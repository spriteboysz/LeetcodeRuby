# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 22:47
# FilePath: P2352. 相等行列对.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def equal_pairs(grid)
    cols = grid.transpose
    cnt = 0
    grid.each do |row|
        cols.each { |col| cnt += 1 if row == col }
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p equal_pairs(grid = [[3, 1, 2, 2], [1, 4, 4, 5], [2, 4, 2, 2], [2, 4, 2, 2]])
    p equal_pairs(grid = [[3, 2, 1], [1, 7, 6], [2, 7, 7]])
end
