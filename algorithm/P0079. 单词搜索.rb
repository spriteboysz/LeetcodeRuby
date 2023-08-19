# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 17:55
# FilePath: P0079. 单词搜索.rb
# Description:

load "common/leetcode.rb"

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
@directions = [[0, 1], [0, -1], [1, 0], [-1, 0]]

def exist(board, word)
    @board, @word = board, word

    def dfs(i, j, k)
        if i < 0 || j < 0 || i >= @board.length || j >= @board[0].length || @board[i][j] != @word[k]
            return false
        end
        return true if k == @word.length - 1
        @board[i][j] = ""
        res = dfs(i + 1, j, k + 1) || dfs(i - 1, j, k + 1) || dfs(i, j + 1, k + 1) || dfs(i, j - 1, k + 1)
        @board[i][j] = @word[k]
        res
    end

    return false if board.flatten.uniq.length < word.split('').uniq.length
    board.each_with_index do |row, i|
        row.each_index do |j|
            return true if dfs(i, j, 0)
        end
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p exist([%w[A A A A A A],
             %w[A A A A A A],
             %w[A A A A A A],
             %w[A A A A A A],
             %w[A A A A A A],
             %w[A A A A A A]], "AAAAAAAAAAAAAAB")
end


