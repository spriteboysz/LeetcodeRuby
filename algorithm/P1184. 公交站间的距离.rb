# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 11:13
# FilePath: P1184. 公交站间的距离.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} distance
# @param {Integer} start
# @param {Integer} destination
# @return {Integer}
def distance_between_bus_stops(distance, start, destination)
    sum = 0
    start, destination = destination, start if start > destination
    (start...destination).each do |i|
        sum += distance[i]
    end
    [distance.sum - sum, sum].min
end

if __FILE__ == $PROGRAM_NAME
    p distance_between_bus_stops(distance = [1, 2, 3, 4], start = 0, destination = 2)
    p distance_between_bus_stops(distance = [1, 2, 3, 4], start = 0, destination = 3)
end
