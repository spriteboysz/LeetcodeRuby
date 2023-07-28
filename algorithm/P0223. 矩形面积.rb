# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-27 23:14
# FilePath: P0223. 矩形面积.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} ax1
# @param {Integer} ay1
# @param {Integer} ax2
# @param {Integer} ay2
# @param {Integer} bx1
# @param {Integer} by1
# @param {Integer} bx2
# @param {Integer} by2
# @return {Integer}
def compute_area(ax1, ay1, ax2, ay2, bx1, by1, bx2, by2)
    area1 = (ax2 - ax1) * (ay2 - ay1)
    area2 = (bx2 - bx1) * (by2 - by1)
    width = [ax2, bx2].min - [ax1, bx1].max
    high = [ay2, by2].min - [ay1, by1].max
    area3 = [width, 0].max * [high, 0].max
    area1 + area2 - area3
end

if __FILE__ == $PROGRAM_NAME
    p compute_area(ax1 = -3, ay1 = 0, ax2 = 3, ay2 = 4, bx1 = 0, by1 = -1, bx2 = 9, by2 = 2)
end


