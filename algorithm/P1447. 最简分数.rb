# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 21:43
# FilePath: P1447. 最简分数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {String[]}
def simplified_fractions(n)
    fractions = []
    2.upto(n).each do |denominator|
        1.upto(denominator - 1).each do |numerator|
            if denominator.gcd(numerator) == 1
                fractions << numerator.to_s + "/" + denominator.to_s
            end
        end
    end
    fractions
end

if __FILE__ == $PROGRAM_NAME
    p simplified_fractions(4)
end
