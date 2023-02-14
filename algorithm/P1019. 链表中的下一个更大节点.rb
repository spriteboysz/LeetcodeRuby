# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-13 22:57
# FilePath: P1019. 链表中的下一个更大节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {Integer[]}
def next_larger_nodes(head)
    nodes = []
    until head.nil?
        nodes << head.val
        head = head.next
    end
    stack, ret = [], [0] * nodes.length
    (nodes.length - 1..0).step(-1).each { |i|
        stack.pop until stack.empty? || nodes[i] < stack[-1]
        ret[i] = stack[-1] unless stack.empty?
        stack << nodes[i]
    }
    ret
end

if __FILE__ == $PROGRAM_NAME
    p next_larger_nodes(ListNode.create("[2,1,5]"))
end


