# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 15:05
# FilePath: 剑指 Offer 12. 矩阵中的路径.rb
# Description:

load "common/leetcode.rb"

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
    @grid, @target = board, word

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

    return false if board.flatten.uniq.size < word.split('').uniq.size
    board.each_with_index { |row, i|
        row.each_with_index { |c, j|
            if c == word[0] and dfs(i, j, 0)
                return true
            end
        }
    }
    false
end

if __FILE__ == $PROGRAM_NAME
    p exist(board = [["A", "B", "C", "E"],
                     ["S", "F", "C", "S"],
                     ["A", "D", "E", "E"]], word = "ABCCED")
end


