# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-20 22:49
# FilePath: P2181. 合并零之间的节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def merge_nodes(head)
    dummy = ListNode.new(-1)
    prev = dummy
    while head&.next
        prev.next = head
        head = head.next
        while head && head.val != 0
            prev.next.val += head.val
            head = head.next
        end
        prev = prev.next
    end
    prev.next = nil
    dummy.next
end

if __FILE__ == $PROGRAM_NAME
    p merge_nodes(ListNode.create("[0,1,0,3,0,2,2,0]")).to_s
end
