# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 22:59
# FilePath: P0155. 最小栈.rb
# Description:

load "common/leetcode.rb"

class MinStack
    def initialize
        @stack1, @stack2 = [], []
        @stack2.push(2 ** 32)
    end

=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
        @stack1.push(val)
        @stack2.push([val, @stack2.last].min)
    end

=begin
    :rtype: Void
=end
    def pop
        @stack1.pop
        @stack2.pop
    end

=begin
    :rtype: Integer
=end
    def top
        @stack1.last
    end

=begin
    :rtype: Integer
=end
    def get_min
        @stack2.last
    end
end

if __FILE__ == $PROGRAM_NAME
    obj = MinStack.new
    obj.push(-2)
    obj.push(0)
    obj.push(-3)
    p obj.get_min
    obj.pop
    p obj.top
    p obj.get_min
end


