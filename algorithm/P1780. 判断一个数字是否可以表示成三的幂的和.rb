# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 23:04
# FilePath: P1780. 判断一个数字是否可以表示成三的幂的和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def check_powers_of_three(n)
    !n.to_s(3).include?("2")
end

if __FILE__ == $PROGRAM_NAME
    p check_powers_of_three(n = 91)
    p check_powers_of_three(n = 21)
end
