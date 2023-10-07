# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 11:16
# FilePath: LCR 022. 环形链表 II.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
    visited = Hash.new(false)
    until head.nil?
        if visited[head]
            return head
        end
        visited[head] = true
        head = head.next
    end
    nil
end

if __FILE__ == $PROGRAM_NAME
    p detectCycle(ListNode.create "[3,2,0,-4]")
end


