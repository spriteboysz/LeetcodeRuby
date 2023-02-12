# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 13:00
# FilePath: P0121. 买卖股票的最佳时机.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    min, sum = prices[0], 0
    prices.each do |price|
        min = price if price < min
        sum = price - min if (price - min) > sum
    end
    sum
end

if __FILE__ == $PROGRAM_NAME
    p max_profit([7, 1, 5, 3, 6, 4])
end


