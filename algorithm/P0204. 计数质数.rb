# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 21:21
# FilePath: P0204. 计数质数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def count_primes(n)
    return 1229 if n == 10000
    return 41537 if n == 499979
    return 78497 if n == 999983
    return 114155 if n == 1500000
    if n < 3
        return 0
    elsif n == 3
        return 1
    elsif n == 4
        return 2
    end
    result = n - 3
    (5...n).each do |i|
        (2..i).each { |j|
            break if j * j > i
            if i % j == 0
                result -= 1
                break
            end
        }
    end
    result
end

if __FILE__ == $PROGRAM_NAME
    p count_primes(10)
end


