# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-11 17:14
# FilePath: P0142. 环形链表 II.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def detectCycle(head)
    hash = Hash.new
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


