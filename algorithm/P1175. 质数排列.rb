# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-29 22:22
# FilePath: P1175. 质数排列.rb
# Description:

load "common/leetcode.rb"

MOD = 10 ** 9 + 7

# @param {Integer} n
# @return {Integer}
def num_prime_arrangements(n)
    def prime(num)
        return false if num == 1
        (2..(num ** 0.5).to_i).each { |i|
            return false if num % i == 0
        }
        true
    end

    def factorial(num)
        product = 1
        (1..num).each { |i|
            product *= i
            product %= MOD
        }
        product
    end

    cnt = 0
    (1..n).each { |i|
        cnt += 1 if prime(i)
    }
    (factorial(cnt) * factorial(n - cnt)) % MOD
end

if __FILE__ == $PROGRAM_NAME
    p num_prime_arrangements(n = 100)
end


