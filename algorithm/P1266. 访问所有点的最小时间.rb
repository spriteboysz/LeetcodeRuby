# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 16:20
# FilePath: P1266. 访问所有点的最小时间.rb
# Description: 

# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
    time = 0
    (0...points.length - 1).each { |i|
        x0, y0 = points[i][0], points[i][1]
        x1, y1 = points[i + 1][0], points[i + 1][1]
        time += [(x0 - x1).abs, (y0 - y1).abs].max
    }
    time
end

p min_time_to_visit_all_points(points = [[3, 2], [-2, 2]])



