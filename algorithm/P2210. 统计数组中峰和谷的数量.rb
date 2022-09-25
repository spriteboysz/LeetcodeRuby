# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 14:11
# FilePath: P2210. 统计数组中峰和谷的数量.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def count_hill_valley(nums)
    (1...nums.length).each do |i|
        nums[i - 1] = nil if nums[i] == nums[i - 1]
    end
    nums.compact!
    p nums
    cnt = 0
    (1...nums.length - 1).each do |i|
        cnt += 1 if nums[i] > nums[i - 1] && nums[i] > nums[i + 1]
        cnt += 1 if nums[i] < nums[i - 1] && nums[i] < nums[i + 1]
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_hill_valley(nums = [2, 4, 1, 1, 6, 5])
    p count_hill_valley([21, 21, 21, 2, 2, 2, 2, 21, 21, 45])
end
