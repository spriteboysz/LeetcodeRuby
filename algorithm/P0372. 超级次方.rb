# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 16:08
# FilePath: P0372. 超级次方.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} a
# @param {Integer[]} b
# @return {Integer}
def super_pow(a, b)
    @mod = 1337

    def pow(base, exp)
        return 1 if exp == 0
        base %= @mod
        if exp.even?
            sub = pow(base, exp >> 1)
            (sub ** 2) % @mod
        else
            (base * pow(base, exp - 1)) % @mod
        end
    end

    return 1 if b.empty?
    b_pop = b.pop
    part1 = pow(a, b_pop)
    part2 = pow(super_pow(a, b), 10)
    (part1 * part2) % @mod
end

if __FILE__ == $PROGRAM_NAME
    p super_pow(a = 2147483647, b = [2, 0, 0])
end


