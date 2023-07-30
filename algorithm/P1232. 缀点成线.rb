# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 12:53
# FilePath: P1232. 缀点成线.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} coordinates
# @return {Boolean}
def check_straight_line(coordinates)
    dx, dy, n = coordinates[0][0], coordinates[0][1], coordinates.size
    (0...n).each { |i|
        coordinates[i][0] -= dx
        coordinates[i][1] -= dy
    }
    a, b = coordinates[1][1], -coordinates[1][0]
    (2...n).each { |i|
        x, y = coordinates[i][0], coordinates[i][1]
        return false unless a * x + b * y == 0
    }
    true
end

if __FILE__ == $PROGRAM_NAME
    p check_straight_line(coordinates = [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7]])
end


