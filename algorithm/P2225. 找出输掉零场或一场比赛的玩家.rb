# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-09 22:37
# FilePath: P2225. 找出输掉零场或一场比赛的玩家.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners(matches)
    player, loser = Hash.new(0), Hash.new(0)
    matches.each do |win, lose|
        player[win] = 1
        player[lose] = 1
        loser[lose] += 1
    end
    [player.keys.select { |k| loser[k] == 0 }.sort,
     loser.keys.select { |k| loser[k] == 1 }.sort]
end

if __FILE__ == $PROGRAM_NAME
    p find_winners([[2, 3], [1, 3], [5, 4], [6, 4]])
end
