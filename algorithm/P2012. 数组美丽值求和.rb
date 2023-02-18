# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-17 22:44
# FilePath: P2012. 数组美丽值求和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def sum_of_beauties(nums)
    n = nums.length
    max_arr, min_arr = [nums[0]], [nums[-1]]
    (1...n - 2).each do |i|
        max_arr << [max_arr[-1], nums[i]].max
    end
    (n - 2...1).step(-1).each do |i|
        min_arr << [min_arr[-1], nums[i]].min
    end
    min_arr.reverse!

    ans = 0
    nums.each_with_index do |num, i|
        next if i == 0 || i == n - 1
        if max_arr[i - 1] < num && num < min_arr[i - 1]
            ans += 2
        elsif nums[i - 1] < num && num < nums[i + 1]
            ans += 1
        end
    end
    ans
end

if __FILE__ == $PROGRAM_NAME
    p sum_of_beauties([2, 4, 6, 4])
end


