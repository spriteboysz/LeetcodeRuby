# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-14 22:02
# FilePath: P2937. 使三个字符串相等.rb
# Description:

load "common/leetcode.rb"

# @param {String} s1
# @param {String} s2
# @param {String} s3
# @return {Integer}
def find_minimum_operations(s1, s2, s3)
    minimum = 0
    (0...[s1.length, s2.length, s3.length].min).each { |i|
        if s1[i] == s2[i] and s1[i] == s3[i] and s2[i] == s3[i]
            minimum += 1
        else
            break
        end
    }
    minimum == 0 ? -1 : (s1.length + s2.length + s3.length - 3 * minimum)
end

if __FILE__ == $PROGRAM_NAME
    p find_minimum_operations(s1 = "abc", s2 = "abb", s3 = "ab")
end


