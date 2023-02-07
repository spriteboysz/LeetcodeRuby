# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/7 23:54
# FilePath: P2544. 交替数字和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def alternate_digit_sum(n)
    sum, flag = 0, 1
    n.to_s.each_char do |c|
        sum += c.to_i * flag
        flag *= -1
    end
    sum
end

if __FILE__ == $PROGRAM_NAME
    p alternate_digit_sum(521)
end


