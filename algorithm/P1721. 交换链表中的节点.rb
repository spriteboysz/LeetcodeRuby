# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-09 21:47
# FilePath: P1721. 交换链表中的节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def swap_nodes(head, k)
    nodes = []
    while head
        nodes << head
        head = head.next
    end
    temp = nodes[k - 1]
    nodes[k - 1] = nodes[nodes.length - k]
    nodes[nodes.length - k] = temp
    dummy = ListNode.new(-1)
    cur = dummy
    nodes.each do |node|
        cur.next = node
        cur = cur.next
    end
    nodes[nodes.length - 1].next = nil
    dummy.next
end

if __FILE__ == $PROGRAM_NAME
    p swap_nodes(ListNode.create("[7,9,6,6,7,8,3,0,9,5]"), 5).to_s
    p swap_nodes(ListNode.create("[1]"), 1).to_s
    p swap_nodes(ListNode.create("[7,9]"), 1).to_s
end
