# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 20:24
# FilePath: P1480. 一维数组的动态和.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer[]}
def running_sum(nums)
    running = []
    sum = 0
    nums.each { |num|
        sum += num
        running.append(sum)
    }
    running
end

p running_sum(nums = [3, 1, 2, 10, 1])



