# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 22:38
# FilePath: P0342. 4的幂.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
    bin = n.to_s(2).chars.map(&:to_i)
    bin.sum == 1 && bin.length % 2 == 1
end

if __FILE__ == $PROGRAM_NAME
    p is_power_of_four(16)
end
