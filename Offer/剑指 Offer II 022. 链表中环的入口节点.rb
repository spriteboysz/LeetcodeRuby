# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 15:18
# FilePath: 剑指 Offer II 022. 链表中环的入口节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
    hash = Hash.new(false)
    until head.nil?
        return head if hash[head]
        hash[head] = true
        head = head.next
    end
    nil
end

if __FILE__ == $PROGRAM_NAME
    p detectCycle(ListNode.create("[3,2,0,-4]"))
end


