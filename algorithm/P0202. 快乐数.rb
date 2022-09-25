# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 10:36
# FilePath: P0202. 快乐数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    hash = Hash.new(0)
    loop do
        return false unless hash.keys.index(n).nil?
        return true if n == 1
        hash[n] = 1
        n = n.to_s.chars.map { |c| c.to_i * c.to_i }.sum
    end
end

if __FILE__ == $PROGRAM_NAME
    p is_happy(n = 19)
    p is_happy(n = 2)
end
