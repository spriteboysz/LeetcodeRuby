# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 19:23
# FilePath: P0080. 删除有序数组中的重复项 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    return nums.size if nums.size <= 2
    cnt = 2
    (2...nums.size).each do |j|
        if nums[cnt - 2] != nums[j]
            nums[cnt] = nums[j]
            cnt += 1
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p remove_duplicates([1, 1, 1, 2, 2, 3])
end


