# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 22:14
# FilePath: P1387. 将整数按权重排序.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} lo
# @param {Integer} hi
# @param {Integer} k
# @return {Integer}
def get_kth(lo, hi, k)
    def process(num)
        cnt = 0
        while num > 1
            if num.even?
                num /= 2
            else
                num = num * 3 + 1
            end
            cnt += 1
        end
        cnt
    end

    hash = Hash.new
    (lo..hi).each { |num| hash[num] = process(num) }
    hash.keys.sort { |a, b| hash[a] == hash[b] ? a - b : hash[a] - hash[b] }[k - 1]
end

if __FILE__ == $PROGRAM_NAME
    p get_kth(lo = 12, hi = 15, k = 2)
end


