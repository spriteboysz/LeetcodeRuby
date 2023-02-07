# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/7 23:00
# FilePath: P2558. 从数量最多的堆取走礼物.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} gifts
# @param {Integer} k
# @return {Integer}
def pick_gifts(gifts, k)
    k.times do
        gifts << Math.sqrt(gifts.sort!.pop).floor
    end
    gifts.sum
end

if __FILE__ == $PROGRAM_NAME
    p pick_gifts(gifts = [25, 64, 9, 4, 100], k = 4)
end


