# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 09:51
# FilePath: P1252. 奇数值单元格的数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} indices
# @return {Integer}
def odd_cells(m, n, indices)
    grid = Array.new(m) { Array.new(n, 0) }
    indices.each do |index|
        (0...n).each { |col| grid[index[0]][col] += 1 }
        (0...m).each { |row| grid[row][index[1]] += 1 }
    end
    grid.flatten.count { |el| el.odd? }
end

if __FILE__ == $PROGRAM_NAME
    p odd_cells(m = 2, n = 2, indices = [[1, 1], [0, 0]])
end
