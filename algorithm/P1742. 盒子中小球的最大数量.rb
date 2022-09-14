# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 23:46
# FilePath: P1742. 盒子中小球的最大数量.rb
# Description: 

# @param {Integer} low_limit
# @param {Integer} high_limit
# @return {Integer}
def count_balls(low_limit, high_limit)
    counts = Array.new(46, 0)
    (low_limit..high_limit).each { |num|
        cur = 0
        num.to_s.each_char { |c|
            cur += c.to_i
        }
        counts[cur] += 1
    }
    counts.max
end

p count_balls(5, 15)
p count_balls(19, 28)
p count_balls(6745, 28296)



