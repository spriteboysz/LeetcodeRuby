# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 19:08
# FilePath: P2487. 从链表中移除节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def remove_nodes(head)
    stack = []
    until head.nil?
        stack.pop until stack.empty? || stack.last >= head.val
        stack.push << head.val
        head = head.next
    end

    dummy = ListNode.new(-1)
    q = dummy
    stack.each do |val|
        q.next = ListNode.new(val)
        q = q.next
    end
    dummy.next
end

if __FILE__ == $PROGRAM_NAME
    p remove_nodes(ListNode.create("[5,2,13,3,8]")).to_s
end


