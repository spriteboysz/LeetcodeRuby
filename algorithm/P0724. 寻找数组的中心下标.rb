# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-10 22:30
# FilePath: P0724. 寻找数组的中心下标.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    sum, left = nums.sum, 0
    (0...nums.length).each do |i|
        return i if 2 * left == sum - nums[i]
        left += nums[i]
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p pivot_index(nums = [1, 7, 3, 6, 5, 6])
end


