# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 11:37
# FilePath: P1827. 最小操作使数组递增.rb
# Description:

load "common/leetcode.rb"

def min_operations(nums)
    cnt = 0
    nums.each_index do |i|
        next if i == 0
        if nums[i - 1] >= nums[i]
            cnt += nums[i - 1] + 1 - nums[i]
            nums[i] = nums[i - 1] + 1
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p min_operations([1, 5, 2, 4, 1])
    p min_operations([1, 1, 1])
    p min_operations([8])
end


