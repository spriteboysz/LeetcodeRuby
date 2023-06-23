# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 21:10
# FilePath: P2706. 购买两块巧克力.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} prices
# @param {Integer} money
# @return {Integer}
def buy_choco(prices, money)
    prices.sort!
    money >= prices[0] + prices[1] ? money - prices[0] - prices[1] : money
end

if __FILE__ == $PROGRAM_NAME
    p buy_choco(prices = [1, 2, 2], money = 3)
end


