# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 22:52
# FilePath: P0414. 第三大的数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
    target = nums.uniq.max(3)[2]
    target.nil? ? nums.max : target
end

if __FILE__ == $PROGRAM_NAME
    p third_max([2, 2, 3, 1])
    p third_max([2, 2, 3])
end
