# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 22:36
# FilePath: P1071. 字符串的最大公因子.rb
# Description:

load "common/leetcode.rb"

# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
    return "" if str1 + str2 != str2 + str1
    str1[...str1.length.gcd(str2.length)]
end

if __FILE__ == $PROGRAM_NAME
    p gcd_of_strings(str1 = "ABABAB", str2 = "ABAB")
end
