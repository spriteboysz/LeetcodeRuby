# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 10:48
# FilePath: P0415. 字符串相加.rb
# Description:

load "common/leetcode.rb"

# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
    nums1, nums2, carry = num1.chars, num2.chars, 0
    sum = ""
    while !nums1.empty? || !nums2.empty? || carry > 0
        carry += nums1.pop.to_i unless nums1.empty?
        carry += nums2.pop.to_i unless nums2.empty?
        sum << (carry % 10).to_s
        carry /= 10
    end
    sum.reverse
end

if __FILE__ == $PROGRAM_NAME
    p add_strings(num1 = "456", num2 = "77")
    p add_strings(num1 = "999", num2 = "2")
end
