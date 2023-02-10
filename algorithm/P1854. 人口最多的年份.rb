# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 23:35
# FilePath: P1854. 人口最多的年份.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} logs
# @return {Integer}
def maximum_population(logs)
    years = [0] * 101
    logs.each do |s, e|
        years[s - 1950] += 1
        years[e - 1950] -= 1
    end
    cur, ans, m = 0, 0, 0
    years.each_with_index do |year, i|
        cur += year
        m, ans = cur, 1950 + i if cur > m
    end
    ans
end

if __FILE__ == $PROGRAM_NAME
    p maximum_population(logs = [[1950, 1961], [1960, 1971], [1970, 1981]])
end


