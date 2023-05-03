# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 23:15
# FilePath: P2574. 左右元素和的差值.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @return {Integer[]}
def left_rigth_difference(nums)
    sum, acc = nums.sum, 0
    diff = []
    nums.each do |num|
        diff << (sum - num - acc * 2).abs
        acc += num
    end
    diff
end

if __FILE__ == $PROGRAM_NAME
    p left_rigth_difference([10, 4, 8, 3])
end


