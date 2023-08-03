# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-01 23:08
# FilePath: P2784. 检查数组是否是好的.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Boolean}
def is_good(nums)
    nums.sort!
    nums.each_with_index { |num, i|
        next if i == nums.size - 1
        return false if num != i + 1
    }
    nums.last == nums.size - 1
end

if __FILE__ == $PROGRAM_NAME
    p is_good(nums = [1, 3, 3, 2])
end


