# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 16:39
# FilePath: LCP 61. 气温变化趋势.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} temperature_a
# @param {Integer[]} temperature_b
# @return {Integer}
def temperature_trend(temperature_a, temperature_b)
    trend_a, trend_b = [], []
    temperature_a.each_with_index do |t, i|
        next if i == 0
        trend_a << if t > temperature_a[i - 1]
                       1
                   elsif t < temperature_a[i - 1]
                       -1
                   else
                       0
                   end
    end
    temperature_b.each_with_index do |t, i|
        next if i == 0
        trend_b << if t > temperature_b[i - 1]
                       1
                   elsif t < temperature_b[i - 1]
                       -1
                   else
                       0
                   end
    end
    trend = Array.new(trend_a.size, 0)
    trend_a.each_with_index do |t, i|
        trend[i] = 1 if t == trend_b[i]
    end
    trend.each_with_index do |t, i|
        next if i == 0
        trend[i] += trend[i - 1] unless t == 0
    end
    trend.max
end

if __FILE__ == $PROGRAM_NAME
    p temperature_trend([5, 10, 16, -6, 15, 11, 3], [16, 22, 23, 23, 25, 3, -16])
    p temperature_trend([-14, 7, -19, 9, 13, 40, 19, 15, -18],
                        [3, 16, 28, 32, 25, 12, 13, -6, 4])
end
