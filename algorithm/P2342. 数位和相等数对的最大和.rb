# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 21:55
# FilePath: P2342. 数位和相等数对的最大和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def maximum_sum(nums)
    hash = Hash.new
    nums.each do |num|
        key = num.to_s.chars.map(&:to_i).sum
        hash[key] = hash.fetch(key, []) << num
    end
    maximum = -1
    hash.values.map(&:sort).each do |v|
        next if v.length == 1
        maximum = [maximum, v[-1] + v[-2]].max
    end
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p maximum_sum([18, 43, 36, 13, 7])
end


