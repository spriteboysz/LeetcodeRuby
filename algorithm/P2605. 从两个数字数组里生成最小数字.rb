# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 18:08
# FilePath: P2605. 从两个数字数组里生成最小数字.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def min_number(nums1, nums2)
    digits = Array.new(10, 0)
    nums1.each do |num|
        digits[num] |= 1
    end
    nums2.each do |num|
        digits[num] |= 2
    end
    digits.each_with_index do |digit, i|
        return i if digit == 3
    end
    a, b = 0, 0
    digits.each_with_index do |digit, i|
        a = i if a == 0 && digit == 1
        b = i if b == 0 && digit == 2
    end
    [a * 10 + b, a + b * 10].min
end

if __FILE__ == $PROGRAM_NAME
    p min_number(nums1 = [4, 1, 3], nums2 = [5, 7])
end


