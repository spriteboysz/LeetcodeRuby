# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-09 21:22
# FilePath: P0328. 奇偶链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def odd_even_list(head)
    return nil if head.nil?
    odd, even = [], []
    while head
        odd << head
        head = head.next
        even << head if head
        head = head.next if head
    end
    nodes = odd + even
    nodes.each_with_index do |node, i|
        next if i == 0
        nodes[i - 1].next = node
    end
    nodes[nodes.length - 1].next = nil
    nodes[0]
end

if __FILE__ == $PROGRAM_NAME
    p odd_even_list(ListNode.create("[2,1,3,5,6,4,7]")).to_s
    p odd_even_list(ListNode.create("[2,1,3,5,6,4,7,8]")).to_s
    p odd_even_list(ListNode.create("[2,1,3,5,6,4]")).to_s
end
