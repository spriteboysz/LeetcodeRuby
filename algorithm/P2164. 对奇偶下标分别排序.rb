# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 22:01
# FilePath: P2164. 对奇偶下标分别排序.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer[]}
def sort_even_odd(nums)
    even, odd = [], []
    nums.each_with_index { |num, i|
        if i.odd?
            odd << num
        else
            even << num
        end
    }
    even.sort!
    odd.sort!.reverse!
    even.zip(odd).flatten.compact
end

if __FILE__ == $PROGRAM_NAME
    p sort_even_odd(nums = [4, 1, 2, 3])
end
