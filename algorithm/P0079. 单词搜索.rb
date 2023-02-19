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
def exist(board, word)
    @board, @word = board, word

    def dfs(i, j, index)
        p [index, @board[i][j], @word[index], @word.length]
        return false if @board[i][j] != @word[index]
        p [index, @word.length]
        # return true if index == @word.length + 100

        temp, @board[i][j] = @board[i][j], "#"
        [[0, 1], [0, -1], [1, 0], [-1, 0]].each do |dx, dy|
            x, y = dx + i, dy + j
            if x >= 0 && x < @board.length && y >= 0 && y < @board[0].length && dfs(x, y, index + 1)
                # return true
            end
        end
        @board[i][j] = temp
    end

    board.each_with_index do |row, i|
        row.each_index do |j|
            return true if dfs(i, j, 0)
        end
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p exist([%w[A B C E], %w[S F C S], %w[A D E E]], "ABCCED")
    p exist([%w[A A A A A A],
             %w[A A A A A A],
             %w[A A A A A A],
             %w[A A A A A A],
             %w[A A A A A A],
             %w[A A A A A A]], "AAAAAAAAAAAAAAB")
end


