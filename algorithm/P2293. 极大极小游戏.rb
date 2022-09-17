# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:44
# FilePath: P2293. 极大极小游戏.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def min_max_game(nums)
    while nums.length > 1
        (0...nums.length).step(4).each do |i|
            nums[i] = [nums[i], nums[i + 1]].min
            nums[i + 1] = nil
            nums[i + 2] = [nums[i + 2], nums[i + 3]].max
            nums[i + 3] = nil
        end
        nums.compact!
    end
    nums[0]
end

if __FILE__ == $PROGRAM_NAME
    p min_max_game(nums = [1, 3, 5, 2, 4, 8, 2, 2])
end
