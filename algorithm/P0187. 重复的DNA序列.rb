# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 20:55
# FilePath: P0187. 重复的DNA序列.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String[]}
def find_repeated_dna_sequences(s)
    hash = Hash.new(0)
    cur = s[0...10]
    hash[cur] = 1
    s.chars.each_index do |i|
        break if i + 10 > s.length - 1
        cur = cur[1...10]
        cur += s[i + 10].to_s
        hash[cur] += 1
    end
    hash.select { |_, v| v > 1 }.keys
end

if __FILE__ == $PROGRAM_NAME
    p find_repeated_dna_sequences("AAAAACCCCCAAAAACCCCCCAAAAAGGGTTT")
end


