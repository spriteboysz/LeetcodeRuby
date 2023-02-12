# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 12:29
# FilePath: P0092. 反转链表 II.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
    nodes = []
    until head.nil?
        nodes << head
        head = head.next
    end
    #nodes = nodes[0...left-1] + nodes[left-1...right].reverse + nodes[right...nodes.length]
    nodes[left-1...right] = nodes[left-1...right].reverse!
    nodes.each_with_index do |node, i|
        break if i == nodes.length - 1
        node.next = nodes[i + 1]
    end
    nodes[-1].next = nil
    nodes[0]
end

if __FILE__ == $PROGRAM_NAME
    p reverse_between(ListNode.create("[1,2,3,4,5]"), 2, 4).to_s
end


