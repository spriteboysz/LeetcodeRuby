# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-28 23:03
# FilePath: P1282. 用户分组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} group_sizes
# @return {Integer[][]}
def group_the_people(group_sizes)
    hash = Hash.new([])
    ans = []
    group_sizes.each_with_index do |el, i|
        v = Array.new(hash[el]) << i
        hash[el] = v
    end
    hash.each_pair do |k, v|
        0.step(v.size - 1, k).each do |i|
            ans << v[i, k]
        end
    end
    ans
end

if __FILE__ == $PROGRAM_NAME
    p group_the_people([2, 1, 3, 3, 3, 2])
end
