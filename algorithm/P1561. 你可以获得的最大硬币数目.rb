# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 21:45
# FilePath: P1561. 你可以获得的最大硬币数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles)
    piles.sort!.reverse!
    sum = 0
    1.step(piles.length * 2 / 3, 2).each { |i| sum += piles[i] }
    sum
end

if __FILE__ == $PROGRAM_NAME
    p max_coins(piles = [9, 8, 7, 6, 5, 1, 2, 3, 4])
end
