# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-30 22:39
# FilePath: LCP 66. 最小展台数量.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} demand
# @return {Integer}
def min_num_booths(demand)
    alphabet = Array.new(26, 0)
    demand.each do |item|
        cur = Array.new(26, 0)
        item.chars.each do |c|
            cur[c.ord - 97] += 1
        end
        (0...26).each { |i|
            alphabet[i] = cur[i] if cur[i] > alphabet[i]
        }
    end
    alphabet.sum
end

if __FILE__ == $PROGRAM_NAME
    # p min_num_booths(%w[acd bed accd])
    p min_num_booths(%w[abc ab ac b])
end
