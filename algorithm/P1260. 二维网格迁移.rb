# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 22:57
# FilePath: P1260. 二维网格迁移.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} grid
# @param {Integer} k
# @return {Integer[][]}
def shift_grid(grid, k)
    return grid if k == 0
    nums = grid.flatten
    k %= nums.size
    nums = nums[-k..-1] + nums[0...-k]
    m, n, pos = grid.size, grid[0].size, 0
    (0...m).each { |i|
        (0...n).each { |j|
            grid[i][j] = nums[pos]
            pos += 1
        }
    }
    grid
end

if __FILE__ == $PROGRAM_NAME
    p shift_grid(grid = [[3, 8, 1, 9], [19, 7, 2, 5], [4, 6, 11, 10], [12, 0, 21, 13]], k = 4)
end


