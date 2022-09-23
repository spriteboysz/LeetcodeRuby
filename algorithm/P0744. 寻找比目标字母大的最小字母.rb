# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 00:04
# FilePath: P0744. 寻找比目标字母大的最小字母.rb
# Description:

load "common/leetcode.rb"

# @param {Character[]} letters
# @param {Character} target
# @return {Character}
def next_greatest_letter(letters, target)
    alphabet = Array.new(26, 0)
    letters.each { |c| alphabet[c.ord - 97] |= 1 }
    ((target.ord + 1).chr.."z").each { |c| return c if alphabet[c.ord - 97] == 1 }
    ((target.ord - 25).chr.."z").each { |c| return c if alphabet[c.ord - 97] == 1 }
end

if __FILE__ == $PROGRAM_NAME
    p next_greatest_letter(letters = %w[x a y z], target = "z")
end
