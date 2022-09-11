# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 16:26
# FilePath: P2220. 转换数字的最少位翻转次数.rb
# Description: 

# @param {Integer} start
# @param {Integer} goal
# @return {Integer}
def min_bit_flips(start, goal)
    (start ^ goal).to_s(2).count("1")
end

p min_bit_flips(start = 3, goal = 4)



