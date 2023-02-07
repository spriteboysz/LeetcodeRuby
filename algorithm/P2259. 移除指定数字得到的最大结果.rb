# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/7 22:55
# FilePath: P2259. 移除指定数字得到的最大结果.rb
# Description:

load "common/leetcode.rb"

# @param {String} number
# @param {Character} digit
# @return {String}
def remove_digit(number, digit)
    maximum = -1
    number.chars.each_with_index do |c, i|
        maximum = [maximum, (number[0...i] + number[i + 1...number.length]).to_i].max if c == digit
    end
    maximum.to_s
end

if __FILE__ == $PROGRAM_NAME
    p remove_digit(number = "1231", digit = "1")
end


