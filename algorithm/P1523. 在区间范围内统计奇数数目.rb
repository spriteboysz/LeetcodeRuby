# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-08 21:35
# FilePath: P1523. 在区间范围内统计奇数数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_odds(low, high)
    (low % 2 == 0 and high % 2 == 0) ? (high - low) / 2 : (high - low) / 2 + 1
end

if __FILE__ == $PROGRAM_NAME
    p count_odds(3, 7)
end


