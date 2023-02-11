# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-10 21:57
# FilePath: P1437. 是否所有 1 都至少相隔 k 个元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def k_length_apart(nums, k)
    cur, flag = 0, false
    nums.each do |num|
        cur += 1 if num == 0 && flag
        if num == 1
            return false if flag && cur < k
            flag, cur = true, 0
        end
    end
    true
end

if __FILE__ == $PROGRAM_NAME
    p k_length_apart(nums = [1, 0, 0, 0, 1, 0, 0, 1], k = 2)
    p k_length_apart(nums = [1, 1, 1, 1, 1], k = 0)
end


