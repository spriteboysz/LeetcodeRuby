# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 21:39
# FilePath: P1608. 特殊数组的特征值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def special_array(nums)
    nums.sort!
    (0..nums.last).each { |x|
        i = 0
        while nums[i] < x
            i += 1
        end
        return x if x == nums.size - i
    }
    -1
end

if __FILE__ == $PROGRAM_NAME
    p special_array(nums = [0, 4, 3, 0, 4])
end


