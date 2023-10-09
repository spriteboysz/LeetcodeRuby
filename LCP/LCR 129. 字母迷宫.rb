# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:08
# FilePath: LCR 129. 字母迷宫.rb
# Description:

load "common/leetcode.rb"

# @param {Character[][]} grid
# @param {String} target
# @return {Boolean}
def word_puzzle(grid, target)
    @grid, @target = grid, target

    def dfs(i, j, k)
        m, n = @grid.size, @grid[0].size
        if i < 0 or i >= m or j < 0 or j >= n or @grid[i][j] != @target[k]
            return false
        end
        return true if k == @target.size - 1
        @grid[i][j] = ""
        res = dfs(i + 1, j, k + 1) || dfs(i - 1, j, k + 1) || dfs(i, j + 1, k + 1) || dfs(i, j - 1, k + 1)
        @grid[i][j] = @target[k]
        res
    end

    return false unless grid.flatten.uniq.size >= target.split('').uniq.size
    grid.each_with_index { |row, i|
        row.each_with_index { |c, j|
            if c == target[0] and dfs(i, j, 0)
                return true
            end
        }
    }
    false
end

if __FILE__ == $PROGRAM_NAME
    p word_puzzle(grid = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], target = "ABCCED")
end


