# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-09 22:45
# FilePath: 剑指 Offer II 077. 链表排序.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def sort_list(head)
    return head if head.nil?
    nodes = []
    while head
        nodes << head
        head = head.next
    end
    nodes.sort_by! { |node| node.val }
    nodes.each_with_index do |node, i|
        next if i == 0
        nodes[i - 1].next = node
    end
    nodes[nodes.length - 1].next = nil
    nodes[0]
end

if __FILE__ == $PROGRAM_NAME
    p sort_list(ListNode.create("[-1,5,3,4,0]")).to_s
end
