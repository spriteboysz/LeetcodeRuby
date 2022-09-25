# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 20:38
# FilePath: 面试题 01.04. 回文排列.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Boolean}
def can_permute_palindrome(s)
    return false if s.empty?
    alphabet = []
    s.chars.each do |item|
        if alphabet.include?(item.to_s)
            alphabet.delete(item.to_s)
        else
            alphabet.push(item.to_s)
        end
    end
    alphabet.length < 2
end

if __FILE__ == $PROGRAM_NAME
    p can_permute_palindrome("tactcoa")
end
