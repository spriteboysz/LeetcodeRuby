# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-29 22:11
# FilePath: P0997. 找到小镇的法官.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
    return -1 if n < 1
    ingress, egress = Array.new(n + 1).fill(0), Array.new(n + 1).fill(0)
    trust.each { |i, e|
        egress[i] += 1
        ingress[e] += 1
    }
    (1..n).each { |i|
        return i if ingress[i] == n - 1 && egress[i] == 0
    }
    -1
end

if __FILE__ == $PROGRAM_NAME
    p find_judge(n = 3, trust = [[1, 3], [2, 3]])
end


