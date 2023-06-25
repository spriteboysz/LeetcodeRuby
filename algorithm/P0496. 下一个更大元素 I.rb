# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 10:10
# FilePath: P0496. 下一个更大元素 I.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
    greater = []
    nums1.each do |num|
        flag = false
        nums2.each_with_index { |n, _|
            flag = true if n == num
            if flag && n > num
                greater << n
                break
            end
        }
        greater << -1 unless flag
    end
    greater
end

if __FILE__ == $PROGRAM_NAME
    p next_greater_element(nums1 = [2, 4], nums2 = [1, 2, 3, 4])
end
