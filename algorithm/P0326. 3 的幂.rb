# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 22:31
# FilePath: P0326. 3 的幂.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
    return false if n < 0
    power = 1
    (0..n).each do |_|
        return true if power == n
        return false if power > n
        power *= 3
    end
end

if __FILE__ == $PROGRAM_NAME
    p is_power_of_three(27)
    p is_power_of_three(28)
end
