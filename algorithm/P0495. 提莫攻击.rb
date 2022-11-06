# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 16:25
# FilePath: P0495. 提莫攻击.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} time_series
# @param {Integer} duration
# @return {Integer}
def find_poisoned_duration(time_series, duration)
    times = 0
    time_series.each_with_index do |time, i|
        next if i == time_series.size - 1
        times += if time + duration < time_series[i + 1]
                     duration
                 else
                     time_series[i + 1] - time
                 end
    end
    times + duration
end

if __FILE__ == $PROGRAM_NAME
    p find_poisoned_duration(time_series = [1, 2], duration = 2)
end
