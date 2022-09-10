# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 23:23
# FilePath: P2160. 拆分数位后四位数字的最小和.rb
# Description: 

# @param {Integer} num
# @return {Integer}
def minimum_sum(num)
    numbers = num.to_s.chars.sort.map(&:to_i)
    numbers[0] * 10 + numbers[1] * 10 + numbers[2] + numbers[3]
end

p minimum_sum(4009)



