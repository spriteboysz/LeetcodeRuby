# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-04 21:32
# FilePath: LCR 006. 两数之和 II - 输入有序数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
    left, right = 0, numbers.size - 1
    while left < right
        if numbers[left] + numbers[right] < target
            left += 1
        elsif numbers[left] + numbers[right] > target
            right -= 1
        else
            return [left, right]
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    p two_sum(numbers = [1, 2, 4, 6, 10], target = 8)
end


