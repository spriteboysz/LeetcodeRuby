# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-04 22:54
# FilePath: P1222. 可以攻击国王的皇后.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} queens
# @param {Integer[]} king
# @return {Integer[][]}
def queens_attackthe_king(queens, king)
    directions = [[0, 1], [0, -1], [1, 0], [-1, 0], [1, 1], [-1, -1], [1, -1], [-1, 1]]
    positions = []
    directions.each do |dx, dy|
        x, y = king
        while x >= 0 && x < 8 && y >= 0 && y < 8
            if queens.include?([x + dx, y + dy])
                positions << [x + dx, y + dy]
                break
            else
                x += dx
                y += dy
            end
        end
    end
    positions
end

if __FILE__ == $PROGRAM_NAME
    p queens_attackthe_king(queens = [[0, 0], [1, 1], [2, 2], [3, 4], [3, 5], [4, 4], [4, 5]],
                            king = [3, 3])
end
