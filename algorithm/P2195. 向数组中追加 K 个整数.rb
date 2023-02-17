# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-16 22:49
# FilePath: P2195. 向数组中追加 K 个整数.rb
# Description:

load "common/leetcode.rb"
require 'set'
# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def minimal_k_sum(nums, k)
    ans = (1 + k) * k / 2
    nums.uniq.sort.each do |num|
        if num <= k
            k += 1
            ans += k - num
        end
    end
    ans
end

if __FILE__ == $PROGRAM_NAME
    p minimal_k_sum(nums = [1, 4, 25, 10, 25], k = 2)
end


