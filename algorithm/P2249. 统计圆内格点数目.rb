# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 22:31
# FilePath: P2249. 统计圆内格点数目.rb
# Description:

load "common/leetcode.rb"
require 'set'

# @param {Integer[][]} circles
# @return {Integer}
def count_lattice_points(circles)
    points = Set.new
    circles.uniq.each do |x, y, r|
        (x - r..x + r).each do |i|
            (y - r..y + r).each do |j|
                next if points.include?([i, j])
                points << [i, j] if (x - i) ** 2 + (y - j) ** 2 <= r ** 2
            end
        end
    end
    points.length
end

if __FILE__ == $PROGRAM_NAME
    p count_lattice_points([[2, 2, 2], [3, 4, 1]])
end


