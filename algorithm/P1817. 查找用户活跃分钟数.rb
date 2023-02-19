# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-18 22:43
# FilePath: P1817. 查找用户活跃分钟数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} logs
# @param {Integer} k
# @return {Integer[]}
def finding_users_active_minutes(logs, k)
    hash = Hash.new
    logs.each do |i, t|
        arr = hash.include?(i) ? hash[i] : []
        arr << t
        hash[i] = arr.uniq
    end
    ans = [0] * k
    hash.values.each do |ts|
        ans[ts.length - 1] += 1
    end
    ans
end

if __FILE__ == $PROGRAM_NAME
    p finding_users_active_minutes([[0, 5], [1, 2], [0, 2], [0, 5], [1, 3]], 5)
end


