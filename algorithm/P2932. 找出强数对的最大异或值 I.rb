# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-15 23:19
# FilePath: P2932. 找出强数对的最大异或值 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def maximum_strong_pair_xor(nums)
    maximum = 0
    nums.each { |num1|
        nums.each { |num2|
            if (num1 - num2).abs <= [num1, num2].min
                maximum = [maximum, num1 ^ num2].max
            end
        }
    }
    maximum
end

if __FILE__ == $PROGRAM_NAME
    p maximum_strong_pair_xor(nums = [1, 2, 3, 4, 5])
end


