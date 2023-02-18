# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-17 23:26
# FilePath: P1922. 统计好数字的数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def count_good_numbers(n)
    @mod = 10 ** 9 + 7

    def quick_power(base, x)
        ret, mul = 1, base
        while x > 0
            ret = ret * mul % @mod if x.odd?
            mul = mul * mul % @mod
            x /= 2
        end
        ret
    end

    quick_power(5, (n + 1) / 2) * quick_power(4, n / 2) % @mod
end

if __FILE__ == $PROGRAM_NAME
    p count_good_numbers(50)
end


