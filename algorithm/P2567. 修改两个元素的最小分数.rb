# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-22 22:21
# FilePath: P2567. 修改两个元素的最小分数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def minimize_sum(nums)
    nums.sort!
    [nums[-3] - nums[0], nums[-2] - nums[1], nums[-1] - nums[2]].min
end

if __FILE__ == $PROGRAM_NAME
    p minimize_sum([1, 4, 7, 8, 5])
end


