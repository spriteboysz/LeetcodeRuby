# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-04 23:11
# FilePath: P0232. 用栈实现队列.rb
# Description:

load "common/leetcode.rb"

class MyQueue
    def initialize
        @stack1, @stack2 = [], []
    end

    #     :type x: Integer
    #     :retype: Void
    def push(x)
        @stack1 << x
    end

    #     :retype: Integer
    def pop
        if @stack2.empty?
            until @stack1.empty?
                @stack2 << @stack1.pop
            end
        end
        @stack2.pop
    end

    #     :retype: Integer
    def peek
        if @stack2.empty?
            until @stack1.empty?
                @stack2 << @stack1.pop
            end
        end
        @stack2[-1]
    end

    #     :retype: Boolean
    def empty
        !@stack1.empty? && !@stack2.empty?
    end

end

if __FILE__ == $PROGRAM_NAME
    queue = MyQueue.new
    queue.push(1) # queue is: [1]
    queue.push(2) # queue is: [1, 2] (leftmost is front of the queue)
    p queue.peek # return 1
    p queue.pop # return 1, queue is [2]
    p queue.empty # return false
end
