# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 22:28
# FilePath: 剑指 Offer II 035. 最小时间差.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} time_points
# @return {Integer}
def find_min_difference(time_points)
    return 0 if time_points.length > time_points.uniq.length
    diff = []
    time_points.each_with_index do |time1, i|
        time_points.each_with_index do |time2, j|
            next if i == j
            cur = (process(time1) - process(time2)).abs
            diff << [cur, 24 * 60 - cur].min
        end
    end
    diff.min
end

def process(time)
    min, sec = time.split(":").map(&:to_i)
    min * 60 + sec
end

if __FILE__ == $PROGRAM_NAME
    p find_min_difference(%w[00:00 23:59 00:00])
    p find_min_difference(%w[00:00 23:59])
end
