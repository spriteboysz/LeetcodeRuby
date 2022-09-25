# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 14:25
# FilePath: P2190. 数组中紧跟 key 之后出现最频繁的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} key
# @return {Integer}
def most_frequent(nums, key)
    hash = Hash.new(0)
    (1...nums.length).each do |i|
        hash[nums[i]] += 1 if nums[i - 1] == key
    end
    hash.keys.find { |k| hash[k] == hash.values.max }
end

if __FILE__ == $PROGRAM_NAME
    p most_frequent(nums = [2, 2, 2, 2, 3], key = 2)
end
