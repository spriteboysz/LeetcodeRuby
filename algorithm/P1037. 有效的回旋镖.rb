# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 21:35
# FilePath: P1037. 有效的回旋镖.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} points
# @return {Boolean}
def is_boomerang(points)
    (points[1][0] - points[0][0]) * (points[2][1] - points[0][1]) != (points[2][0] - points[0][0]) * (points[1][1] - points[0][1])
end

if __FILE__ == $PROGRAM_NAME
    p is_boomerang(points = [[1,1],[2,3],[3,2]])
end


