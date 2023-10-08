# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 23:13
# FilePath: LCR 077. 排序链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def sort_list(head)
    return head if head.nil? or head.next.nil?
    nodes = []
    until head.nil?
        nodes << head
        head = head.next
    end
    nodes.sort_by! { |node| node.val }
    nodes.each_with_index { |node, i|
        break if i == nodes.size - 1
        node.next = nodes[i + 1]
    }
    nodes[-1].next = nil
    nodes.first
end

if __FILE__ == $PROGRAM_NAME
    p sort_list(ListNode.create("[-1,5,3,4,0]")).to_s
end


