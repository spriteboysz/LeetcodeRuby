# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-06-23 22:43
# FilePath: 剑指 Offer 30. 包含min函数的栈.rb
# Description:

load "common/leetcode.rb"

class MinStack
=begin
    initialize your data structure here.
=end
    def initialize
        @stack1, @stack2 = [], []
        @stack2.push(2 ** 32)
    end

=begin
    :type x: Integer
    :retype: Void
=end
    def push(x)
        @stack1.push(x)
        @stack2.push([x, @stack2.last].min)
    end

=begin
    :retype: Void
=end
    def pop
        @stack1.pop
        @stack2.pop
    end

=begin
    :retype: Integer
=end
    def top
        @stack1.last
    end

=begin
    :retype: Integer
=end
    def min
        @stack2.last
    end

end

if __FILE__ == $PROGRAM_NAME
    obj = MinStack.new
    obj.push(-2)
    obj.push(0)
    obj.push(-3)
    p obj.min
    obj.pop
    p obj.top
    p obj.min
end


