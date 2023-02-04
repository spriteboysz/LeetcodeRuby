# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/3 23:18
# FilePath: P2500. 删除每行中的最大值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @return {Integer}
def delete_greatest_value(grid)
    grid.each do |row|
        row.sort!
    end
    greatest = 0
    grid.transpose.each do |row|
        greatest += row.max
    end
    greatest
end

if __FILE__ == $PROGRAM_NAME
    p delete_greatest_value(grid = [[1, 2, 4], [3, 3, 1]])
end


