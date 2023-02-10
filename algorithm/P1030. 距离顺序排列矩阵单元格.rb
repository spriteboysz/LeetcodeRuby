# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 21:42
# FilePath: P1030. 距离顺序排列矩阵单元格.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} rows
# @param {Integer} cols
# @param {Integer} r_center
# @param {Integer} c_center
# @return {Integer[][]}
def all_cells_dist_order(rows, cols, r_center, c_center)
    cells = Array.new
    (0...rows).each do |i|
        (0...cols).each do |j|
            cells <<  [i, j]
        end
    end
    cells.sort_by { |x, y| (x - r_center).abs + (y - c_center).abs }
end

if __FILE__ == $PROGRAM_NAME
    p all_cells_dist_order(2, 3, 1, 2)
end


