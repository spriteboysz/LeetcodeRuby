# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 15:57
# FilePath: P0365. 水壶问题.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} jug1_capacity
# @param {Integer} jug2_capacity
# @param {Integer} target_capacity
# @return {Boolean}
def can_measure_water(jug1_capacity, jug2_capacity, target_capacity)
    def gcd(a, b)
        return b if a % b == 0
        gcd(a, a % b)
    end

    return false if target_capacity > jug1_capacity + jug2_capacity
    target_capacity % gcd([jug1_capacity, jug2_capacity].max, [jug1_capacity, jug2_capacity].min) == 0
end

if __FILE__ == $PROGRAM_NAME
    p can_measure_water(3, 5, 4)
end


