# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 16:33
# FilePath: P2643. 一最多的行.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[][]} mat
# @return {Integer[]}
def row_and_maximum_ones(mat)
    max_id, max_val = 0, 0
    mat.each_with_index do |row, i|
        num = row.sum
        if num > max_val
            max_val = num
            max_id = i
        end
    end
    [max_id, max_val]
end

if __FILE__ == $PROGRAM_NAME
    p row_and_maximum_ones(mat = [[0, 0, 0], [0, 1, 1]])
end


