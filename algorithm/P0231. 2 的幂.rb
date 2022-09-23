# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 21:47
# FilePath: P0231. 2 的幂.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
    n != 0 && !n.to_s(2)[1..].include?("1")
end

if __FILE__ == $PROGRAM_NAME
    p is_power_of_two(16)
    p is_power_of_two(26)
end
