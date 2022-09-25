# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 17:10
# FilePath: P1779. 找到最近的有相同 X 或 Y 坐标的点.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} x
# @param {Integer} y
# @param {Integer[][]} points
# @return {Integer}
def nearest_valid_point(x, y, points)
    hash = Hash.new(0)
    points.each_with_index do |point, i|
        a, b = point
        next if a != x && b != y
        hash[i] = (a - x).abs + (b - y).abs
    end
    return -1 if hash.empty?
    hash.keys.min_by { |k| [hash[k], k] }
end

if __FILE__ == $PROGRAM_NAME
    p nearest_valid_point(x = 3, y = 4, points = [[1, 2], [3, 1], [2, 4], [2, 3], [4, 4]])
end
