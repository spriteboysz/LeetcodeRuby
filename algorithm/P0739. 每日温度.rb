# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-24 22:30
# FilePath: P0739. 每日温度.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
    stack, ret = [], [0] * temperatures.length
    temperatures.each_with_index do |t, i|
        until stack.empty? || temperatures[stack.last] >= t
            index = stack.pop
            ret[index] = i - index
        end
        stack << i
    end
    ret
end

if __FILE__ == $PROGRAM_NAME
    p daily_temperatures([73, 74, 75, 71, 69, 72, 76, 73])
end


