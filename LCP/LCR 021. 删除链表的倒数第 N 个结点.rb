# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 10:47
# FilePath: LCR 021. 删除链表的倒数第 N 个结点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    dummy = ListNode.new(-1, head)
    slow, fast = dummy, dummy
    until fast.next.nil? || n == 0
        fast = fast.next
        n -= 1
    end
    until fast.next.nil?
        slow = slow.next
        fast = fast.next
    end
    slow.next = slow.next.next
    dummy.next
end

if __FILE__ == $PROGRAM_NAME
    p remove_nth_from_end(ListNode.create("[1,2,3,4,5]"), 2).to_s
end


