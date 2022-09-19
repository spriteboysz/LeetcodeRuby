# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:03
# FilePath: P1828.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} points
# @param {Integer[][]} queries
# @return {Integer[]}
def count_points(points, queries)
    counts = []
    queries.each do |query|
        x, y, r = query
        cnt = 0
        points.each do |point|
            a, b = point
            cnt += 1 if (x - a) ** 2 + (y - b) ** 2 <= r ** 2
        end
        counts << cnt
    end
    counts
end

if __FILE__ == $PROGRAM_NAME
    p count_points(points = [[1, 1], [2, 2], [3, 3], [4, 4], [5, 5]],
                   queries = [[1, 2, 2], [2, 2, 2], [4, 3, 2], [4, 3, 3]])
end
