# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-20 22:49
# FilePath: P0036. 有效的数独.rb
# Description:

load "common/leetcode.rb"

# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
    rows, cols, grids = Array.new(9) { Array.new(9, 0) }, Array.new(9) { Array.new(9, 0) }, Array.new(9) { Array.new(9, 0) }
    board.each_with_index do |row, i|
        row.each_with_index do |v, j|
            next if v == "."
            rows[i][v.to_i - 1] += 1
            cols[j][v.to_i - 1] += 1
            grids[i / 3 * 3 + j / 3][v.to_i - 1] += 1
        end
    end
    (rows + cols + grids).each do |grid|
        return false if grid.any? { |x| x > 1 }
    end
    true
end

if __FILE__ == $PROGRAM_NAME
    p is_valid_sudoku([%w[5 3 . . 7 . . . .],
                       %w[6 . . 1 9 5 . . .],
                       %w[. 9 8 . . . . 6 .],
                       %w[8 . . . 6 . . . 3],
                       %w[4 . . 8 . 3 . . 1],
                       %w[7 . . . 2 . . . 6],
                       %w[. 6 . . . . 2 8 .],
                       %w[. . . 4 1 9 . . 5],
                       %w[. . . . 8 . . 7 9]])
end


