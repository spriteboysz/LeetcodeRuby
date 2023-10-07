# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 15:26
# FilePath: LCR 035. 最小时间差.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} time_points
# @return {Integer}
def find_min_difference(time_points)
    return 0 if time_points.size != time_points.uniq.size
    time_points.uniq!
    time_points.map! { |point|
        point[0..1].to_i * 60 + point[3..4].to_i
    }
    diff = 24 * 60
    time_points.sort!.each_with_index { |point, i|
        break if i == time_points.size - 1
        diff = [diff, time_points[i + 1] - point].min
    }
    [diff, time_points.first + 1440 - time_points.last].min
end

if __FILE__ == $PROGRAM_NAME
    p find_min_difference(time_points = ["00:00", "23:59", "00:00"])
    p find_min_difference(time_points = ["00:00", "23:59", "00:02"])
end


