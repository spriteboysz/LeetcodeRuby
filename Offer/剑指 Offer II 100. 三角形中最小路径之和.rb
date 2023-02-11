# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 16:57
# FilePath: 剑指 Offer II 100. 三角形中最小路径之和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
    n = triangle.length
    dp = Array.new(n) { Array.new(0) }

    dp[0][0] = triangle[0][0]
    (1...n).each do |i|
        dp[i][0] = dp[i - 1][0] + triangle[i][0]
        dp[i][i] = dp[i - 1][i - 1] + triangle[i][i]
    end
    (1...n).each do |i|
        (1...i).each do |j|
            dp[i][j] = [dp[i - 1][j - 1], dp[i - 1][j]].min + triangle[i][j]
        end
    end
    dp[n - 1].min
end

if __FILE__ == $PROGRAM_NAME
    p minimum_total(triangle = [[2], [3, 4], [6, 5, 7], [4, 1, 8, 3]])
    p minimum_total(triangle = [[-10]])
end


