# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 23:34
# FilePath: P1128. 等价多米诺骨牌对的数量.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} dominoes
# @return {Integer}
def num_equiv_domino_pairs(dominoes)
    hash = Hash.new(0)
    dominoes.each do |domino|
        a, b = domino.sort
        hash[a * 10 + b] += 1
    end
    cnt = 0
    hash.each_value { |v| cnt += v * (v - 1) / 2 }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p num_equiv_domino_pairs(dominoes = [[1, 2], [2, 1], [3, 4], [5, 6]])
end
