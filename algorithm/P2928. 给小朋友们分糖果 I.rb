# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-14 22:12
# FilePath: P2928. 给小朋友们分糖果 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer} limit
# @return {Integer}
def distribute_candies(n, limit)
    cnt = 0
    (0..limit).each { |i|
        (0..limit).each { |j|
            (0..limit).each { |k|
                cnt += 1 if i + j + k == n
            }
        }
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p distribute_candies(n = 3, limit = 3)
end


