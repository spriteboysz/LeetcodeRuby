# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 23:35
# FilePath: P0507. 完美数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
    return false if num <= 1
    sum, i = 1, 2
    while i * i < num
        sum += i + num / i if num % i == 0
        i += 1
    end
    sum += i if i * i == num
    sum == num
end

if __FILE__ == $PROGRAM_NAME
    p check_perfect_number(28)
end
