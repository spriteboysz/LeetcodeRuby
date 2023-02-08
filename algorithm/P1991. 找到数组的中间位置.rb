# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-08 20:53
# FilePath: P1991. 找到数组的中间位置.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_middle_index(nums)
    n = nums.length
    return 0 if n == 1
    nums.each_with_index do |_, i|
        return i if nums[0...i].sum == nums[i + 1...n].sum
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p find_middle_index(nums = [2, 3, -1, 8, 4])
end


