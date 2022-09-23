# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 23:25
# FilePath: P0506. 相对名次.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
    hash = Hash.new(0)
    score.sort.reverse.each_with_index { |s, i| hash[s] = i }
    medal = ["Gold Medal", "Silver Medal", "Bronze Medal"]
    ranks = []
    score.each do |s|
        ranks << if hash[s] <= 2
                     medal[hash[s]]
                 else
                     (hash[s] + 1).to_s
                 end
    end
    ranks
end

if __FILE__ == $PROGRAM_NAME
    score = [10, 3, 8, 9, 4]
    p find_relative_ranks(score)
end
