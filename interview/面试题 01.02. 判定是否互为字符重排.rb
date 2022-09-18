# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 09:59
# FilePath: 面试题 01.02. 判定是否互为字符重排.rb
# Description:

load "common/leetcode.rb"

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_permutation(s1, s2)
    alphabet = Array.new(26, 0)
    s1.each_char { |c| alphabet[c.ord - 97] += 1 }
    s2.each_char { |c| alphabet[c.ord - 97] -= 1 }
    alphabet.all?(0)
end

if __FILE__ == $PROGRAM_NAME
    p check_permutation(s1 = "abc", s2 = "bca")
end
