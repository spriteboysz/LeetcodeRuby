# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 19:04
# FilePath: P2739. 总行驶距离.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} main_tank
# @param {Integer} additional_tank
# @return {Integer}
def distance_traveled(main_tank, additional_tank)
    (main_tank + [(main_tank - 1) / 4, additional_tank].min) * 10
end

if __FILE__ == $PROGRAM_NAME
    p distance_traveled(main_tank = 5, additional_tank = 10)
end


