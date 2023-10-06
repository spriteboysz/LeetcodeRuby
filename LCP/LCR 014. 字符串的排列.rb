# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-04 21:40
# FilePath: LCR 014. 字符串的排列.rb
# Description:

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_inclusion(s1, s2)
    n1, n2 = s1.length, s2.length
    return false if n1 > n2
    hash1 = Hash.new(0)
    s1.each_char do |c|
        hash1[c] += 1
    end

    (0...n1).each do |i|
        hash1[s2[i]] -= 1 if hash1.include?(s2[i])
        return true if hash1.values.max == 0
    end
    (n1...n2).each do |i|
        hash1[s2[i]] -= 1 if hash1.include?(s2[i])
        hash1[s2[i - n1]] += 1 if hash1.include?(s2[i - n1])
        return true if hash1.values.max == 0
    end
    false
end


if __FILE__ == $PROGRAM_NAME
    p check_inclusion(s1 = "ab", s2 = "eidbaooo")
end


