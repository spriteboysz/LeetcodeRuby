# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 16:53
# FilePath: P2442. 反转之后不同整数的数目.rb
# Description:

load "common/leetcode.rb"
require 'set'

# @param {Integer[]} nums
# @return {Integer}
def count_distinct_integers(nums)
    s, ss = Set.new(nums), Set.new(nums)
    s.each do |num|
        ss << num.to_s.reverse.to_i
    end
    ss.length
end

if __FILE__ == $PROGRAM_NAME
    p count_distinct_integers(nums = [1,13,10,12,31])
end


