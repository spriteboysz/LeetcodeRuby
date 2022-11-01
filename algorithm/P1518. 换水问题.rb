# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-01 23:02
# FilePath: P1518. 换水问题.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def num_water_bottles(num_bottles, num_exchange)
    num_bottles + (num_bottles - 1) / (num_exchange - 1)
end

if __FILE__ == $PROGRAM_NAME
    p num_water_bottles(15, 4)
end
