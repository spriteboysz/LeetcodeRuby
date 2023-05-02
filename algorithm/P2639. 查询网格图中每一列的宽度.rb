# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 16:40
# FilePath: P2639. 查询网格图中每一列的宽度.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[][]} grid
# @return {Integer[]}
def find_column_width(grid)
    widths = []
    grid.transpose.each do |col|
        widths << col.map { |x| x.to_s.length }.max
    end
    widths
end

if __FILE__ == $PROGRAM_NAME
    p find_column_width([[-15, 1, 3], [15, 7, 12], [5, 6, -2]])
end


