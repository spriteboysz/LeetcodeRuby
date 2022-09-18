# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 17:20
# FilePath: P2287. 重排字符形成目标字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} target
# @return {Integer}
def rearrange_characters(s, target)
    alphabet = Array.new(26, 0)
    s.each_char { |c| alphabet[c.ord - 97] += 1 }
    hash = Hash.new(0)
    target.each_char { |c| hash[c] += 1 }
    minimum = s.length
    hash.each_pair do |k, v|
        minimum = [alphabet[k.ord - 97] / v, minimum].min
    end
    minimum
end

if __FILE__ == $PROGRAM_NAME
    p rearrange_characters(s = "abcba", target = "abc")
end
