# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 14:11
# FilePath: P1725. 可以形成最大正方形的矩形数目.rb
# Description: 

# @param {Integer[][]} rectangles
# @return {Integer}
def count_good_rectangles(rectangles)
    sides = rectangles.map { |rectangle| rectangle.min }
    sides.count(sides.max)
end

p count_good_rectangles(rectangles = [[2, 3], [3, 7], [4, 3], [3, 7]])



