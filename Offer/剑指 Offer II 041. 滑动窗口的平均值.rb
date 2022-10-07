# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 22:27
# FilePath: 剑指 Offer II 041. 滑动窗口的平均值.rb
# Description:

load "common/leetcode.rb"

class MovingAverage

    #     Initialize your data structure here.
    #     :type size: Integer
    def initialize(size)
        @size = size
        @nums = []
    end

    #     :type val: Integer
    #     :retype: Float
    def next(val)
        @nums.shift if @nums.length == @size
        @nums << val
        @nums.sum * 1.0 / @nums.length
    end

end

if __FILE__ == $PROGRAM_NAME
    moving_avg = MovingAverage.new(3)
    p moving_avg.next(1) # 返回 1.0 = 1 / 1
    p moving_avg.next(10) # 返回 5.5 = (1 + 10) / 2
    p moving_avg.next(3) # 返回 4.66667 = (1 + 10 + 3) / 3
    p moving_avg.next(5) #  返回 6.0 = (10 + 3 + 5) / 3
end
