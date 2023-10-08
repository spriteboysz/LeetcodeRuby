# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 16:00
# FilePath: LCR 042. 最近的请求次数.rb
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
    obj = RecentCounter.new
    p obj.ping(1)
    p obj.ping(100)
    p obj.ping(3001)
    p obj.ping(3002)
end


