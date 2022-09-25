# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 17:29
# FilePath: P1752. 检查数组是否经排序和轮转得到.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Boolean}
def check(nums)
    count = (1...nums.size).count { |i| nums[i] < nums[i - 1] }
    count += 1 if nums[0] < nums[-1]
    count < 2
end

if __FILE__ == $PROGRAM_NAME
    p check([3, 4, 5, 1, 2])
end
