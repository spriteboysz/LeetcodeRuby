# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-02 23:14
# FilePath: P0120. 三角形最小路径和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
    return triangle[0][0] if triangle.size == 1
    triangle.reverse!
    (1...triangle.size).each do |i|
        (0...triangle[i].size).each do |j|
            triangle[i][j] += [triangle[i - 1][j], triangle[i - 1][j + 1]].min
        end
    end
    triangle[-1][-1]
end

if __FILE__ == $PROGRAM_NAME
    p minimum_total([[2], [3, 4], [6, 5, 7], [4, 1, 8, 3]])
end
