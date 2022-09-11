# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 16:46
# FilePath: P1365. 有多少小于当前数字的数字.rb
# Description: 

# @param {Integer[]} nums
# @return {Integer[]}
def smaller_numbers_than_current(nums)
    smaller = []
    nums.each_with_index { |num, i|
        cnt = 0
        nums.each { |other|
            cnt += 1 if num > other
        }
        smaller.append(cnt)
    }
    smaller
end

p smaller_numbers_than_current(nums = [6, 5, 4, 8])


