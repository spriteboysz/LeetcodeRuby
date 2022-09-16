# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:16
# FilePath: 剑指 Offer II 006. 排序数组中两个数字之和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    left, right = 0, numbers.length - 1
    while left < right
        cur = numbers[left] + numbers[right]
        if cur > target
            right -= 1
        elsif cur < target
            left += 1
        else
            return [left, right]
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    p two_sum(numbers = [2, 3, 4], target = 6)
end
