# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 21:54
# FilePath: P2460. 对数组执行操作.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def apply_operations(nums)
    n = nums.length
    nums.each_with_index do |num, i|
        next if i == n - 1
        if num == nums[i + 1]
            nums[i] *= 2
            nums[i + 1] = 0
        end
    end
    nums.delete_if { |num| num == 0 }
    nums + [0] * (n - nums.length)
end

if __FILE__ == $PROGRAM_NAME
    p apply_operations(nums = [1, 2, 2, 1, 1, 0])
    p apply_operations(nums = [1, 2, 3, 4, 5])
end


