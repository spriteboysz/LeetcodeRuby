# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 22:51
# FilePath: P0345. 反转字符串中的元音字母.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def reverse_vowels(s)
    vowels = "aeiouAEIOU"
    target = ""
    s.each_char do |c|
        target << c if vowels.include?(c)
    end
    target.reverse!
    ss, i = "", 0
    s.each_char do |c|
        if vowels.include?(c)
            ss += target[i]
            i += 1
        else
            ss += c
        end
    end
    ss
end

if __FILE__ == $PROGRAM_NAME
    p reverse_vowels(s = "hello")
end
