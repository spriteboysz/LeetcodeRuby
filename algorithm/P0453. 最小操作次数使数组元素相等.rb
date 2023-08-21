# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 22:19
# FilePath: P0453. 最小操作次数使数组元素相等.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def min_moves(nums)
    minimum = nums.min
    cnt = 0
    nums.each { |num|
        cnt += num - minimum
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p min_moves(nums = [1, 2, 3])
end


