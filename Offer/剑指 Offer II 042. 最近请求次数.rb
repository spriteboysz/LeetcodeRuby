# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-18 22:29
# FilePath: 剑指 Offer II 042. 最近请求次数.rb
# Description:

load "common/leetcode.rb"

class RecentCounter
    def initialize
        @ping_list = []
    end

=begin
    :type t: Integer
    :retype: Integer
=end
    def ping(t)
        @ping_list << t
        while @ping_list[0] < t - 3000
            @ping_list.shift
        end
        @ping_list.length
    end
end

if __FILE__ == $PROGRAM_NAME
    recent_counter = RecentCounter.new
    p recent_counter.ping(1)
    p recent_counter.ping(100)
    p recent_counter.ping(3001)
    p recent_counter.ping(3002)
end


