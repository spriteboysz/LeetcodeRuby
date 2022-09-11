# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 13:19
# FilePath: LCP 06. 拿硬币.rb
# Description: 

# @param {Integer[]} coins
# @return {Integer}
def min_count(coins)
    cnt = 0
    coins.each { |coin| cnt += (coin + 1) / 2 }
    cnt
end

p min_count(coins = [2, 3, 10])



