# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-28 22:50
# FilePath: P2391. 收集垃圾的最少总时间.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} garbage
# @param {Integer[]} travel
# @return {Integer}
def garbage_collection(garbage, travel)
    cnt = 0
    hash = Hash.new(0)
    garbage.each_with_index do |s, i|
        cnt += s.size
        s.chars.each do |c|
            hash[c] = i
        end
    end
    hash.each_value do |v|
        cnt += travel[0, v].sum
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    garbage = %w[MMM PGM GP]
    travel = [3, 10]
    p garbage_collection(garbage, travel)
end
