# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 20:59
# FilePath: P2717. 半有序排列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def semi_ordered_permutation(nums)
    index1, index2, n = -1, -1, nums.length
    nums.each_with_index { |num, i|
        index1 = i if num == 1
        index2 = i if num == n
    }
    index1 <= index2 ? index1 + n - 1 - index2 : index1 + n - 2 - index2
end

if __FILE__ == $PROGRAM_NAME
    p semi_ordered_permutation(nums = [2, 1, 4, 3])
end


