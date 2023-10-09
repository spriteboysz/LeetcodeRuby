# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 10:57
# FilePath: LCR 125. 图书整理 II.rb
# Description:

load "common/leetcode.rb"

class CQueue
    @queue
    def initialize
        @queue = []
    end


=begin
    :type value: Integer
    :rtype: Void
=end
    def append_tail(value)
        @queue << value
    end


=begin
    :rtype: Integer
=end
    def delete_head
        @queue.empty?? -1 : @queue.shift
    end

end


if __FILE__ == $PROGRAM_NAME
    obj = CQueue.new
    obj.append_tail(1)
    obj.append_tail(2)
    p obj.delete_head
end


