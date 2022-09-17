# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:29
# FilePath: P2395. 和相等的子数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Boolean}
def find_subarrays(nums)
    hash = Hash.new(0)
    (1...nums.length).each do |i|
        cur = nums[i] + nums[i - 1]
        return true if hash.key?(cur)
        hash[cur] = 1
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p find_subarrays(nums = [4, 2, 4])
    p find_subarrays(nums = [1, 2, 3, 4, 5])
end
