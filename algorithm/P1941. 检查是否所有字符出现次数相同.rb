# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 20:11
# FilePath: P1941. 检查是否所有字符出现次数相同.rb
# Description: 

# @param {String} s
# @return {Boolean}
def are_occurrences_equal(s)
    counts = Array.new(26, 0)
    s.chars.each { |c| counts[c.ord - 97] += 1 }
    counts.uniq.count { |num| num != 0 } == 1
end

p are_occurrences_equal(s = "abacbc")
p are_occurrences_equal(s = "aaabb")



