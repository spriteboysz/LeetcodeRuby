# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 21:28
# FilePath: P2427. 公因子的数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def common_factors(a, b)
    (1..[a, b].min).count { |num| a % num == 0 && b % num == 0 }
end

if __FILE__ == $PROGRAM_NAME
    p common_factors(a = 25, b = 30)
end
