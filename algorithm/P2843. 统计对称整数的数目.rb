# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-16 22:44
# FilePath: P2843. 统计对称整数的数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def count_symmetric_integers(low, high)
    cnt = 0
    (low..high).each { |num|
        n = num.to_s.length
        next if n.odd?
        left = num.to_s[...n / 2].chars.map(&:to_i).sum
        right = num.to_s[n / 2..].chars.map(&:to_i).sum
        cnt += 1 if left == right
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_symmetric_integers(low = 1200, high = 1230)
end


