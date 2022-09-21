# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 21:55
# FilePath: P1630. 等差子数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer[]} l
# @param {Integer[]} r
# @return {Boolean[]}
def check_arithmetic_subarrays(nums, l, r)
    check = []
    l.zip(r).each do |s, e|
        cur = nums[s..e].sort
        diff, flag = cur[1] - cur[0], true
        1.upto(cur.length - 1).each { |i|
            if cur[i] - cur[i - 1] != diff
                check << false
                flag = false
                break
            end
        }
        check << true if flag
    end
    check
end

if __FILE__ == $PROGRAM_NAME
    p check_arithmetic_subarrays(nums = [-12, -9, -3, -12, -6, 15, 20, -25, -20, -15, -10],
                                 l = [0, 1, 6, 4, 8, 7],
                                 r = [4, 4, 9, 7, 9, 10])
end
