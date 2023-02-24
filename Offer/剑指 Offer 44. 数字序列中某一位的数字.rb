# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-23 23:18
# FilePath: 剑指 Offer 44. 数字序列中某一位的数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def find_nth_digit(n)
    n -= 1
    (1..10).each do |digit|
        first_num = 10 ** (digit - 1)
        if n < 9 * first_num * digit
            return (first_num + n / digit).to_s[n % digit].to_i
        end
        n -= 9 * first_num * digit
    end
end

if __FILE__ == $PROGRAM_NAME
    p find_nth_digit(11)
end


