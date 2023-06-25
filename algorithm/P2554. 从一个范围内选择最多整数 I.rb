# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 17:06
# FilePath: P2554. 从一个范围内选择最多整数 I.rb
# Description:

load "common/leetcode.rb"
require 'set'
# @param {Integer[]} banned
# @param {Integer} n
# @param {Integer} max_sum
# @return {Integer}
def max_count(banned, n, max_sum)
    cnt, s = 0, Set.new(banned)
    (1..n).each do |num|
        break if num > max_sum
        unless s.include?(num)
            max_sum -= num
            cnt += 1
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p max_count(banned = [11], n = 7, max_sum = 50)
end


