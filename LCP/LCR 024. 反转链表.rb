# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 11:30
# FilePath: LCR 024. 反转链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
    return head if head.nil? or head.next.nil?
    nodes = []
    until head.nil?
        nodes << head
        head = head.next
    end
    nodes.reverse!.each_with_index { |node, i|
        break if i == nodes.size - 1
        node.next = nodes[i + 1]
    }
    nodes.last.next = nil
    nodes.first
end

if __FILE__ == $PROGRAM_NAME
    p reverse_list(ListNode.create("[1,2,3,4,5]")).to_s
end


