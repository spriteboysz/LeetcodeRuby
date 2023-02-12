# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 11:45
# FilePath: P0061. 旋转链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def rotate_right(head, k)
    return if head.nil?
    nodes = []
    until head.nil?
        nodes << head
        head = head.next
    end
    k %= nodes.length
    nodes = nodes[-k..-1] + nodes[0...nodes.length-k]
    nodes.each_with_index do |node, i|
        break if i == nodes.length - 1
        node.next = nodes[i + 1]
    end
    nodes[-1].next = nil
    nodes[0]
end

if __FILE__ == $PROGRAM_NAME
    p rotate_right(ListNode.create("[1,2,3,4,5]"), 2).to_s
end


