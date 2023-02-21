# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-21 23:26
# FilePath: P0888. 公平的糖果交换.rb
# Description:

load "common/leetcode.rb"
require 'set'

# @param {Integer[]} alice_sizes
# @param {Integer[]} bob_sizes
# @return {Integer[]}
def fair_candy_swap(alice_sizes, bob_sizes)
    target = (alice_sizes.sum - bob_sizes.sum) / 2
    b_set = Set.new(bob_sizes)
    alice_sizes.each do |a|
        return [a, a - target] if b_set.include?(a - target)
    end
end

if __FILE__ == $PROGRAM_NAME
    p fair_candy_swap([1, 1], [2, 2])
end


