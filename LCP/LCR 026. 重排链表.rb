# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 11:54
# FilePath: LCR 026. 重排链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {Void} Do not return anything, modify head in-place instead.
def reorder_list(head)
    return head if head.nil? or head.next.nil?
    nodes = []
    until head.nil?
        nodes << head
        head = head.next
    end
    nodes2, n = [], nodes.size
    nodes.each_with_index { |node, i|
        break if i > n / 2
        nodes2 << node
        nodes2 << nodes[n - 1 - i]
    }
    (0...n - 1).each { |i|
        nodes2[i].next = nodes2[i + 1]
    }
    nodes2[n - 1].next = nil
    nodes2[0]
end

if __FILE__ == $PROGRAM_NAME
    p reorder_list(ListNode.create("[1,2,3,4]")).to_s
    p reorder_list(ListNode.create("[1,2,3,4,5]")).to_s
end


