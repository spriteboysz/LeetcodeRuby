# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 21:47
# FilePath: P0229. 多数元素 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def majority_element(nums)
    hash = Hash.new(0)
    nums.each do |num|
        hash[num] += 1
    end
    hash.select { |_, v| v > nums.length / 3 }.keys
end

if __FILE__ == $PROGRAM_NAME
    p majority_element(nums = [3, 2, 3])
end


