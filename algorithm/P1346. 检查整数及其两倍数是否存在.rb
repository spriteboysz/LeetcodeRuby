# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 21:25
# FilePath: P1346. 检查整数及其两倍数是否存在.rb
# Description:

load "common/leetcode.rb"
require 'set'
# @param {Integer[]} arr
# @return {Boolean}
def check_if_exist(arr)
    return true if arr.count(0) >= 2
    arr = Set.new(arr)
    arr.each do |num|
        return true if arr.include?(num * 2) && num != 0
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p check_if_exist(arr = [7, 1, 14, 11, 0, 0])
end


