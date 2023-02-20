# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-20 23:39
# FilePath: P0279. 完全平方数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def num_squares(n)
    dp = [n] * (n + 1)
    dp[0], dp[1] = 0, 1
    (2..n).each do |i|
        m = (i ** 0.5).to_i
        (1..m).each do |j|
            dp[i] = [dp[i], dp[i - j * j].to_i + 1].min
        end
    end
    dp[-1]
end

if __FILE__ == $PROGRAM_NAME
    p num_squares(12)
end


