# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 16:44
# FilePath: P2562. 找出数组的串联值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_the_array_conc_val(nums)
    value, left, right = 0, 0, nums.length - 1
    while left <= right
        if left == right
            value += nums[left]
            break
        end
        value += (nums[left].to_s + nums[right].to_s).to_i
        left += 1
        right -= 1
    end
    value
end

if __FILE__ == $PROGRAM_NAME
    p find_the_array_conc_val([5, 14, 13, 8, 12])
end


