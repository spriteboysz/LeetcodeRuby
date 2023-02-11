# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 16:46
# FilePath: P1588. 所有奇数长度子数组的和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Integer}
def sum_odd_length_subarrays(arr)
    sum, n = 0, arr.length
    arr.each_with_index do |v, i|
        left_count, right_count = i, n - i - 1
        left_odd = (left_count + 1) / 2
        right_odd = (right_count + 1) / 2
        left_even = left_count / 2 + 1
        right_even = right_count / 2 + 1
        sum += v * (left_odd * right_odd + left_even * right_even)
    end
    sum
end

if __FILE__ == $PROGRAM_NAME
    p sum_odd_length_subarrays(arr = [1, 4, 2, 5, 3])
end


