# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 23:14
# FilePath: P1732. 找到最高海拔.rb
# Description: 

# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
    maximum, cur = 0, 0
    gain.each { |g|
        cur += g
        maximum = [maximum, cur].max
    }
    maximum
end

p largest_altitude(gain = [-4, -3, -2, -1, 4, 3, 2])



