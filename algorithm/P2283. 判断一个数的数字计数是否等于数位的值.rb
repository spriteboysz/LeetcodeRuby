# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 22:35
# FilePath: P2283. 判断一个数的数字计数是否等于数位的值.rb
# Description: 

# @param {String} num
# @return {Boolean}
def digit_count(num)
    num.chars.each_with_index { |number, i|
        return false unless num.count(i.to_s) == number.to_i
    }
    true
end

p digit_count("1210")
p digit_count("030")



