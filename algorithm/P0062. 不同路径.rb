# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-20 23:22
# FilePath: P0062. 不同路径.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    row = Array.new(n, 1)
    (1...m).each do |_|
        cur_col = 1
        (1...n).each do |j|
            cur_col += row[j]
            row[j] = cur_col
        end
    end
    row.last
end

if __FILE__ == $PROGRAM_NAME
    p unique_paths(7, 3)
end
