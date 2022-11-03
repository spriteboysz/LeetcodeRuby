# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-03 23:16
# FilePath: P0143. 重排链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
    nodes, nodes2, cur = [], [], head
    while cur
        nodes << cur
        cur = cur.next
    end
    while nodes.size > 0
        nodes2 << nodes.shift
        nodes2 << nodes.pop if nodes.size > 0
    end
    nodes2.each_index do |i|
        next if i == 0
        nodes2[i - 1].next = nodes2[i]
    end
    nodes2[-1].next = nil
    p head.to_s
end

if __FILE__ == $PROGRAM_NAME
    head = ListNode.create("[1,2,3,4,5]")
    reorder_list(head)
end
