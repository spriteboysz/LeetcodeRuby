# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 13:41
# FilePath: P0025. K 个一组翻转链表.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def reverse_k_group(head, k)
    nodes = []
    while head
        nodes << head
        head = head.next
    end
    pos, n = 0, nodes.size
    while pos + k <= n
        nodes[pos, k] = nodes[pos, k].reverse
        pos += k
    end
    (1...nodes.size).each { |i|
        nodes[i - 1].next = nodes[i]
    }
    nodes[-1].next = nil
    nodes.first
end

if __FILE__ == $PROGRAM_NAME
    head = ListNode.create("[1,2,3,4,5]")
    p reverse_k_group(head, k = 2).to_s
end


