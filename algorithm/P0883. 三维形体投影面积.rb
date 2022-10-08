# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 22:36
# FilePath: P0883. 三维形体投影面积.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def projection_area(grid)
    grid.flatten.count { |el| el > 0 } + grid.map { |v| v.max }.sum + grid.transpose.map { |v| v.max }.sum
end

if __FILE__ == $PROGRAM_NAME
    p projection_area([[1, 2], [3, 4]])
end
