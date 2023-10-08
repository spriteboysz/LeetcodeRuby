# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 15:49
# FilePath: LCR 041. 数据流中的移动平均值.rb
# Description:

load "common/leetcode.rb"

class MovingAverage
    @size
    @queue
    @sum

=begin
    Initialize your data structure here.
    :type size: Integer
=end
    def initialize(size)
        @queue = []
        @size = size
        @sum = 0
    end

=begin
    :type val: Integer
    :rtype: Float
=end
    def next(val)
        if @queue.size == @size
            @sum -= @queue.shift
        end
        @queue << val
        @sum += val
        @sum * 1.0 / @queue.size
    end
end

if __FILE__ == $PROGRAM_NAME
    obj = MovingAverage.new(3)
    p obj.next(1)
    p obj.next(10)
    p obj.next(3)
    p obj.next(5)
end


