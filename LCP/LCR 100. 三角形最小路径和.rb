# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 23:32
# FilePath: LCR 100. 三角形最小路径和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
    (0...triangle.size).each { |i|
        (0...triangle[i].size).each { |j|
            if i == 0 and j == 0
                next
            elsif j == 0
                triangle[i][j] += triangle[i - 1][j]
            elsif j == i
                triangle[i][j] += triangle[i - 1][j - 1]
            else
                triangle[i][j] += [triangle[i - 1][j], triangle[i - 1][j - 1]].min
            end
        }
    }
    triangle.last.min
end

if __FILE__ == $PROGRAM_NAME
    p minimum_total(triangle = [[2], [3, 4], [6, 5, 7], [4, 1, 8, 3]])
end


