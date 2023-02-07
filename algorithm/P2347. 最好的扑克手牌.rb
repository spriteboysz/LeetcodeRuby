# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/6 22:43
# FilePath: P2347. 最好的扑克手牌.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} ranks
# @param {Character[]} suits
# @return {String}
def best_hand(ranks, suits)
    return "Flush" if suits.uniq.length == 1
    cnt = [0] * 14
    ranks.each do |rank|
        cnt[rank] += 1
    end
    ["High Card", "Pair", "Three of a Kind", "Three of a Kind"][cnt.max - 1]
end

if __FILE__ == $PROGRAM_NAME
    p best_hand(ranks = [13, 2, 3, 1, 9], suits = %w[a a a a a])
end


