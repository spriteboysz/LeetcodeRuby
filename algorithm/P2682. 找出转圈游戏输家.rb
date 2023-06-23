# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 21:25
# FilePath: P2682. 找出转圈游戏输家.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer} k
# @return {Integer[]}
def circular_game_losers(n, k)
    visited = [false] * n
    m, d = 0, k
    until visited[m]
        visited[m] = true
        m = (m + d) % n
        d += k
    end
    losers = []
    visited.each_with_index { |item, i|
        losers.push(i + 1) unless item
    }
    losers
end

if __FILE__ == $PROGRAM_NAME
    p circular_game_losers(n = 5, k = 2)
end


