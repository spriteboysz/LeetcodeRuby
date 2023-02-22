# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-22 22:27
# FilePath: P2564. 子字符串异或查询.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {Integer[][]} queries
# @return {Integer[][]}
def substring_xor_queries(s, queries)
    hash, n = Hash.new, s.length
    (1..[30, n].min).each do |len|
        (len - 1...n).each do |j|
            x = s[j - len + 1...j + 1].to_i(2)
            hash[x] = [j - len + 1, j] unless hash.key?(x)
        end
    end

    substring = []
    queries.each do |a, b|
        substring << hash.fetch(a ^ b, [-1, -1])
    end
    substring
end

if __FILE__ == $PROGRAM_NAME
    p substring_xor_queries(s = "101101", queries = [[0, 5], [1, 2]])
    p substring_xor_queries(s = "0101", queries = [[12, 8]])
end


