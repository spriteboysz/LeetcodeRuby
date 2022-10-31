# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-31 23:45
# FilePath: 剑指 Offer 57 - II. 和为s的连续正数序列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} target
# @return {Integer[][]}
def find_continuous_sequence(target)
    sequence = []
    (1...target).each do |i|
        (i + 1...target).each { |j|
            cur = (i + j) * (j - i + 1) / 2
            sequence << (i..j).to_a if cur == target
            break if cur > target
        }
    end
    sequence
end

if __FILE__ == $PROGRAM_NAME
    p find_continuous_sequence(target = 15)
end
