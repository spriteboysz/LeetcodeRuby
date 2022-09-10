# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-10 23:40
# FilePath: P0771. 宝石与石头.rb
# Description: 

# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
    cnt = 0
    jewels.chars.each do |jewel|
        cnt += stones.count(jewel)
    end
    cnt
end

p num_jewels_in_stones(jewels = "aA", stones = "aAAbbbb")



