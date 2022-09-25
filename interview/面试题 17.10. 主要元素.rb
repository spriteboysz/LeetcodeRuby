# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 10:53
# FilePath: 面试题 17.10. 主要元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hash = Hash.new(0)
    nums.each do |num|
        hash[num] += 1
        return num if hash[num] > nums.length / 2
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p majority_element([2, 2, 1, 1, 1, 2, 2])
end
