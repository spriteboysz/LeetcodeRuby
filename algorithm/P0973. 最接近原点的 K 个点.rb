# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 23:41
# FilePath: P0973. 最接近原点的 K 个点.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} points
# @param {Integer} k
# @return {Integer[][]}
def k_closest(points, k)
    points.sort { |a, b| a[0] ** 2 + a[1] ** 2 - b[0] ** 2 - b[1] ** 2 }[0...k]
end

if __FILE__ == $PROGRAM_NAME
    p k_closest(points = [[3, 3], [5, -1], [-2, 4]], k = 2)
end


