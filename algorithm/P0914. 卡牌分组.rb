# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 22:34
# FilePath: P0914. 卡牌分组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} deck
# @return {Boolean}
def has_groups_size_x(deck)
    def gcd(a, b)
        return a if b == 0
        gcd(b, a % b)
    end

    hash = Hash.new(0)
    deck.each { |num| hash[num] += 1 }
    count = hash.values
    (0...count.length).each { |i|
        next if i == count.length - 1
        count[i + 1] = gcd(count[i], count[i + 1])
    }
    count[-1] > 1
end

if __FILE__ == $PROGRAM_NAME
    p has_groups_size_x(deck = [1, 2, 3, 4, 4, 3, 2, 1])
end


