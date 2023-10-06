# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-04 21:05
# FilePath: LCR 004. 只出现一次的数字 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    hash = Hash.new(0)
    nums.each { |num|
        hash[num] += 1
    }
    hash.each { |k, v|
        return k if v == 1
    }
end

if __FILE__ == $PROGRAM_NAME
    p single_number(nums = [0, 1, 0, 1, 0, 1, 100])
end


