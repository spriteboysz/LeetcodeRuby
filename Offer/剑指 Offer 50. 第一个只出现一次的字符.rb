# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 10:25
# FilePath: 剑指 Offer 50. 第一个只出现一次的字符.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Character}
def first_uniq_char(s)
    hash = Hash.new(0)
    s.each_char { |c| hash[c] += 1 }
    s.each_char do |c|
        return c if hash[c] == 1
    end
    ""
end

if __FILE__ == $PROGRAM_NAME
    p first_uniq_char(s = "abaccdeff")
end
