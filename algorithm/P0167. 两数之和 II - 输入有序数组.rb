# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:20
# FilePath: P0167. 两数之和 II - 输入有序数组.rb
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
            return [left + 1, right + 1]
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    p two_sum(numbers = [2, 3, 4], target = 6)
end
