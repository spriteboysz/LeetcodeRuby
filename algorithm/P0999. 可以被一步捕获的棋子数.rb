# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-04 22:23
# FilePath: P0999. 可以被一步捕获的棋子数.rb
# Description:

load "common/leetcode.rb"

# @param {Character[][]} board
# @return {Integer}
def num_rook_captures(board)
    r = -1
    board.each_with_index do |row, i|
        if row.include?("R")
            r = i
            break
        end
    end
    c = board[r].index("R")
    row = board[r].join("").delete(".")
    col = board.transpose[c].join("").delete(".")
    cnt = 0
    %w[pR Rp].each do |el|
        cnt += 1 if row.include?(el)
        cnt += 1 if col.include?(el)
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p num_rook_captures([%w[. . . . . . . .],
                         %w[. p p p p p . .],
                         %w[. p p B p p . .],
                         %w[. p B R B p . .],
                         %w[. p p B p p . .],
                         %w[. p p p p p . .],
                         %w[. . . . . . . .],
                         %w[. . . . . . . .]])
end
