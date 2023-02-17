# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-16 23:41
# FilePath: P2150. 找出数组中的所有孤独数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def find_lonely(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    lonely = []
    nums.uniq.each do |num|
        lonely << num if hash[num] == 1 && hash[num + 1] == 0 && hash[num - 1] == 0
    end
    lonely
end

if __FILE__ == $PROGRAM_NAME
    p find_lonely(nums = [10, 6, 5, 8])
end


