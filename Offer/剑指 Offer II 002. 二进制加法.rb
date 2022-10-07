# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 11:33
# FilePath: 剑指 Offer II 002. 二进制加法.rb
# Description:

load "common/leetcode.rb"

# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    sum, nums1, nums2, carry = [], a.chars.map(&:to_i), b.chars.map(&:to_i), 0
    while !nums1.empty? || !nums2.empty? || carry > 0
        carry += nums1.pop unless nums1.empty?
        carry += nums2.pop unless nums2.empty?
        sum << carry % 2
        carry >>= 1
    end
    sum.reverse!.join
end

if __FILE__ == $PROGRAM_NAME
    p add_binary(a = "1010", b = "1011")
    p add_binary(a = "1111", b = "1")
end
