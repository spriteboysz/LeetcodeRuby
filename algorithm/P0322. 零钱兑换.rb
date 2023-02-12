# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 14:29
# FilePath: P0322. 零钱兑换.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} coins
# @param {Integer} amount
# @return {Integer}
def coin_change(coins, amount)
    dp = Array.new(amount + 1).fill(amount + 1)
    dp[0] = 0
    (1..amount).each { |i|
        (0...coins.length).each { |j|
            dp[i] = [dp[i], dp[i - coins[j]] + 1].min if coins[j] <= i
        }
    }
    dp[amount] > amount ? -1 : dp[amount]
end

if __FILE__ == $PROGRAM_NAME
    p coin_change(coins = [1, 2, 5], amount = 11)
end


