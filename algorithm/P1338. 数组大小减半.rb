# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 22:41
# FilePath: P1338. 数组大小减半.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Integer}
def min_set_size(arr)
    hash = Hash.new(0)
    arr.each { |num| hash[num] += 1 }
    cnt, n = 0, arr.size
    hash.values.sort.reverse.each_with_index { |num, i|
        cnt += num
        return i + 1 if cnt * 2 >= n
    }
    n
end

if __FILE__ == $PROGRAM_NAME
    p min_set_size(arr = [3, 3, 3, 3, 5, 5, 5, 2, 2, 7])
end


