# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 22:42
# FilePath: P0130. 被围绕的区域.rb
# Description:

load "common/leetcode.rb"

# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve(board)
    return if board.nil?
    n, m = board.length, board[0].length
    return if n < 3 || m < 3

    def dfs(board, i, j)
        n, m = board.length, board[0].length
        return if i < 0 || j < 0 || i >= n || j >= m || board[i][j] != "O"
        board[i][j] = "#"
        dfs(board, i - 1, j)
        dfs(board, i + 1, j)
        dfs(board, i, j - 1)
        dfs(board, i, j + 1)
    end

    (0...n).each do |i|
        dfs(board, i, 0)
        dfs(board, i, m - 1)
    end
    (0...m).each do |j|
        dfs(board, 0, j)
        dfs(board, n - 1, j)
    end
    board.each_with_index do |row, i|
        row.each_index do |j|
            board[i][j] = "X" if board[i][j] == "O"
            board[i][j] = "O" if board[i][j] == "#"
        end
    end
    board
end

if __FILE__ == $PROGRAM_NAME
    p solve([%w[X X X X], %w[X O O X], %w[X X O X], %w[X O X X]])
end


