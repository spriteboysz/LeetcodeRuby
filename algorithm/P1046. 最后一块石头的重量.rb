# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 23:23
# FilePath: P1046. 最后一块石头的重量.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
    while stones.length > 1
        a, b = stones.sort!.pop(2)
        stones << (a - b).abs if a != b
    end
    stones[0].nil? ? 0 : stones[0]
end

if __FILE__ == $PROGRAM_NAME
    p last_stone_weight([2, 7, 4, 1, 8, 1])
    p last_stone_weight([1, 1])
end
