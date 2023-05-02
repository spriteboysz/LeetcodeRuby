# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 15:47
# FilePath: P2651. 计算列车到站时间.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} arrival_time
# @param {Integer} delayed_time
# @return {Integer}
def find_delayed_arrival_time(arrival_time, delayed_time)
    (arrival_time + delayed_time) % 24
end

if __FILE__ == $PROGRAM_NAME
    p find_delayed_arrival_time(arrival_time = 13, delayed_time = 11)
end


