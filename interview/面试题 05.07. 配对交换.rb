# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:33
# FilePath: 面试题 05.07. 配对交换.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Integer}
def exchange_bits(num)
    ((num & 0xaaaaaaaa) >> 1) | ((num & 0x55555555) << 1)
end

if __FILE__ == $PROGRAM_NAME
    p exchange_bits(2)
    p exchange_bits(3)
end
