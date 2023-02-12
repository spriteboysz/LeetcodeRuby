# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 12:52
# FilePath: P0119. 杨辉三角 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    triangle = []
    (1..row_index + 1).each do |i|
        row = []
        (0...i).each { |j|
            if j == i - 1 or j == 0
                row << 1
            else
                row << triangle[i - 2][j - 1] + triangle[i - 2][j]
            end
        }
        triangle << row
    end
    triangle[-1]
end

if __FILE__ == $PROGRAM_NAME
    p get_row(3)
end


