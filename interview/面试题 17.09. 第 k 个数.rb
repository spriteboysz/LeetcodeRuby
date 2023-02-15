# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-14 23:20
# FilePath: 面试题 17.09. 第 k 个数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} k
# @return {Integer}
def get_kth_magic_number(k)
    dp = [0] * (k + 1)
    dp[1], p3, p5, p7 = 1, 1, 1, 1
    (2..k).each { |i|
        num3, num5, num7 = dp[p3] * 3, dp[p5] * 5, dp[p7] * 7
        dp[i] = [num3, num5, num7].min
        p3 += 1 if dp[i] == num3
        p5 += 1 if dp[i] == num5
        p7 += 1 if dp[i] == num7
    }
    dp[k]
end

if __FILE__ == $PROGRAM_NAME
    p get_kth_magic_number(5)
end


