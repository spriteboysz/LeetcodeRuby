# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 17:38
# FilePath: P1323. 6 和 9 组成的最大数字.rb
# Description: 

# @param {Integer} num
# @return {Integer}
def maximum69_number (num)
    num.to_s.sub("6", "9").to_i
end

p maximum69_number(num = 9966)
p maximum69_number(num = 9999)



