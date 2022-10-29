# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-29 23:38
# FilePath: P0419. 甲板上的战舰.rb
# Description:

load "common/leetcode.rb"

# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
    cnt = 0
    board.each_with_index do |row, i|
        row.each_with_index { |position, j|
            next if position == "."
            next if i > 0 && board[i - 1][j] == "X"
            next if j > 0 && board[i][j - 1] == "X"
            cnt += 1
        }
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_battleships([["X", ".", ".", "X"],
                         [".", ".", ".", "X"],
                         [".", ".", ".", "X"]])
end
