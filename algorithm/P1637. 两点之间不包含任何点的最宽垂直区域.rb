# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-03 20:12
# FilePath: P1637. 两点之间不包含任何点的最宽垂直区域.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[][]} points
# @return {Integer}
def max_width_of_vertical_area(points)
    widths = points.map { |point| point[0] }.uniq.sort
    return 0 if widths.length == 1
    maximum = widths[1] - widths[0]
    widths.each_with_index do |item, i|
        next if i == 0
        maximum = [maximum, item - widths[i - 1]].max
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p max_width_of_vertical_area(points = [[8, 7], [9, 9], [7, 4], [9, 7]])
end


