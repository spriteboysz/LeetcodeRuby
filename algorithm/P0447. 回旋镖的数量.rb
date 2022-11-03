# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-03 23:40
# FilePath: P0447. 回旋镖的数量.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} points
# @return {Integer}
def number_of_boomerangs(points)
    cnt = 0
    points.each do |x1, y1|
        hash = Hash.new(0)
        points.each do |x2, y2|
            dis = (x1 - x2) ** 2 + (y1 - y2) ** 2
            hash[dis] += 1
        end
        hash.each_value do |v|
            cnt += v * (v - 1)
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p number_of_boomerangs(points = [[1, 1], [2, 2], [3, 3]])
end
