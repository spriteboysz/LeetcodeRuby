# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 14:22
# FilePath: P0319. 灯泡开关.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def bulb_switch(n)
    ((n + 0.5) ** 0.5).to_i
end

if __FILE__ == $PROGRAM_NAME
    p bulb_switch(3)
end


