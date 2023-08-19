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
    return 0 if n < 2
    is_prime = [1] * n
    is_prime[0], is_prime[1] = 0, 0
    (2...(n ** 0.5 + 1).to_i).each { |i|
        if is_prime[i] == 1
            (i * i).step(n, i).each { |j|
                is_prime[j] = 0
            }
        end
    }
    is_prime.sum
end

if __FILE__ == $PROGRAM_NAME
    p count_primes(689171)
end


