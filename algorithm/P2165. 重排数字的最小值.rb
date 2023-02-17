# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-16 23:31
# FilePath: P2165. 重排数字的最小值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Integer}
def smallest_number(num)
    return 0 if num == 0
    if num < 0
        num.abs.to_s.chars.sort.reverse.join.to_i * -1
    else
        zero, other = [], []
        num.to_s.each_char do |c|
            if c.to_i.zero?
                zero << c
            else
                other << c
            end
        end
        other.sort!
        (other[0, 1] + zero + other[1, other.length-1]).join.to_i
    end
end

if __FILE__ == $PROGRAM_NAME
    p smallest_number(310)
    p smallest_number(-7605)
end


