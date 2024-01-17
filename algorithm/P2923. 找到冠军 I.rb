# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-15 22:35
# FilePath: P2923. 找到冠军 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def find_champion(grid)
    grid.transpose.each_with_index { |row, i| return i if row.sum == 0 }
end

if __FILE__ == $PROGRAM_NAME
    p find_champion(grid = [[0, 0, 1], [1, 0, 1], [0, 0, 0]])
end


