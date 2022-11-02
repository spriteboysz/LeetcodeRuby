# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-02 23:01
# FilePath: P0812. 最大三角形面积.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} points
# @return {Float}
def largest_triangle_area(points)
    areas = []
    points.each do |x1, y1|
        points.each do |x2, y2|
            points.each do |x3, y3|
                areas << 0.5 * ((x2 - x1) * (y3 - y1) - (x3 - x1) * (y2 - y1))
            end
        end
    end
    areas.max
end

if __FILE__ == $PROGRAM_NAME
    p largest_triangle_area(points = [[0, 0], [0, 1], [1, 0], [0, 2], [2, 0]])
end
