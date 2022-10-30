# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-30 09:02
# FilePath: P0284. 顶端迭代器.rb
# Description:

load "common/leetcode.rb"

class PeekingIterator
    # @param {Iterator} iter
    def initialize(iter)
        @iter = iter
    end

    # Returns true if the iteration has more elements.
    # @return {boolean}
    def hasNext
        !@iter.empty?
    end

    # Returns the next element in the iteration.
    # @return {integer}
    def next
        @iter.shift
    end

    # Returns the next element in the iteration without advancing the iterator.
    # @return {integer}
    def peek
        @iter.first
    end
end

if __FILE__ == $PROGRAM_NAME
    peeking = PeekingIterator.new([1, 2, 3])
    p peeking.next # 返回 1 ，指针移动到下一个元素 [1, 2, 3]
    p peeking.peek # 返回 2 ，指针未发生移动 [1, 2, 3]
    p peeking.next # 返回 2 ，指针移动到下一个元素 [1, 2, 3]
    p peeking.next # 返回 3 ，指针移动到下一个元素 [1, 2, 3]
    p peeking.hasNext # 返回 False
end
