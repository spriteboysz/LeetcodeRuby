# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-04 21:35
# FilePath: LCR 012. 寻找数组的中心下标.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
    sum, acc = 0, 0
    nums.each { |num| sum += num }
    nums.each_with_index { |num, i|
        if acc * 2 == sum - num
            return i
        end
        acc += num
    }
    -1
end

if __FILE__ == $PROGRAM_NAME
    p pivot_index(nums = [1, 7, 3, 6, 5, 6])
end


