# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 12:05
# FilePath: LCP 39. 无人机方阵.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} source
# @param {Integer[][]} target
# @return {Integer}
def minimum_switching_times(source, target)
    hash = Hash.new(0)
    source.flatten.each { |color| hash[color] += 1 }
    target.flatten.each { |color| hash[color] -= 1 }
    hash.values.select { |num| num > 0 }.sum
end

if __FILE__ == $PROGRAM_NAME
    p minimum_switching_times(source = [[1, 2, 3], [3, 4, 5]], target = [[1, 3, 5], [2, 3, 4]])
end
