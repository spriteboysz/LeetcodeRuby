# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-14 21:57
# FilePath: P1344. 时钟指针的夹角.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} hour
# @param {Integer} minutes
# @return {Float}
def angle_clock(hour, minutes)
    one_minute_angle, one_hour_angle = 6, 30
    minutes_angle = one_minute_angle * minutes
    hour_angle = (hour % 12 + minutes / 60.0) * one_hour_angle
    diff = (hour_angle - minutes_angle).abs
    [diff, 360 - diff].min
end

if __FILE__ == $PROGRAM_NAME
    p angle_clock(hour = 12, minutes = 30)
end


