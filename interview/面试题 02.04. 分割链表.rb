# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-20 22:35
# FilePath: 面试题 02.04. 分割链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
    return nil if head == nil
    nodes, gt = [], []
    while head
        if head.val < x
            nodes << head
        else
            gt << head
        end
        head = head.next
    end
    nodes += gt
    nodes.each_with_index { |node, i|
        next if i == 0
        nodes[i - 1].next = node
    }
    nodes[-1].next = nil
    nodes.first
end

if __FILE__ == $PROGRAM_NAME
    head = ListNode.create("[1,4,3,2,5,2]")
    p partition(head, 3).to_s
end


