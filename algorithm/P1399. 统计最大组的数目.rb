# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 21:55
# FilePath: P1399. 统计最大组的数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
    hash = Hash.new(0)
    1.upto(n).each { |i| hash[i.to_s.chars.map(&:to_i).sum] += 1 }
    count = Hash.new(0)
    hash.values.each { |el| count[el] += 1 }
    count[count.keys.max]
end

if __FILE__ == $PROGRAM_NAME
    p count_largest_group(15)
    p count_largest_group(24)
end
