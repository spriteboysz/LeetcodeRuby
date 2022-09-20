# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-20 22:58
# FilePath: P2149. 按符号重排数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def rearrange_array(nums)
    positive, negative = [], []
    nums.each do |num|
        if num > 0
            positive << num
        else
            negative << num
        end
    end
    positive.zip(negative).flatten
end

if __FILE__ == $PROGRAM_NAME
    p rearrange_array(nums = [3, 1, -2, -5, 2, -4])
end
