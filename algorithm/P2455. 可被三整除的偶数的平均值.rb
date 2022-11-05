# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-05 23:45
# FilePath: P2455. 可被三整除的偶数的平均值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def average_value(nums)
    nums.filter! { |num|
        num % 2 == 0 && num % 3 == 0
    }
    nums.size == 0 ? 0 : nums.sum / nums.size
end

if __FILE__ == $PROGRAM_NAME
    p average_value(nums = [1, 3, 6, 10, 12, 15])
end
