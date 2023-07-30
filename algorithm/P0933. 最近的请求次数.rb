# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 12:48
# FilePath: P0933. 最近的请求次数.rb
# Description:

load "common/leetcode.rb"

class RecentCounter
    def initialize
        @nums = []
    end

=begin
    :type t: Integer
    :rtype: Integer
=end
    def ping(t)
        (@nums.delete_if { |e| e < t - 3000 } << t).size
    end

end

if __FILE__ == $PROGRAM_NAME
    obj = RecentCounter.new
    p obj.ping(1)
    p obj.ping(100)
    p obj.ping(3001)
    p obj.ping(3002)
end


