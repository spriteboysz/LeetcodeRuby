# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 22:20
# FilePath: P0141. 环形链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {Boolean}
def has_cycle(head)
    hash = Hash.new
    while head
        return true if hash[head]
        hash[head] = true
        head = head.next
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p has_cycle(ListNode.create("[3,2,0,-4]"))
end


