# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 16:39
# FilePath: P1331. 数组序号转换.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
    hash = Hash.new(0)
    arr.uniq.sort.each_with_index do |num, i|
        hash[num] = i + 1
    end
    arr.map { |num| hash[num] }
end

if __FILE__ == $PROGRAM_NAME
    p array_rank_transform([37, 12, 28, 9, 100, 56, 80, 5, 12])
end
