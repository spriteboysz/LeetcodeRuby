# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 23:19
# FilePath: LCR 098. 不同路径.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    grid = Array.new(m) { Array.new(n, 0) }
    (0...m).each { |i|
        (0...n).each { |j|
            if i == 0 or j == 0
                grid[i][j] = 1
            else
                grid[i][j] += grid[i - 1][j] + grid[i][j - 1]
            end
        }
    }
    grid[-1].last
end

if __FILE__ == $PROGRAM_NAME
    p unique_paths(3, 7)
end


