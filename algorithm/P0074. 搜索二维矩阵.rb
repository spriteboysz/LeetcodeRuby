# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 17:46
# FilePath: P0074. 搜索二维矩阵.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
    matrix.each_with_index do |row, i|
        row.each_with_index do |v, j|
            return true if v == target
        end
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p search_matrix(matrix = [[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], target = 3)
end


