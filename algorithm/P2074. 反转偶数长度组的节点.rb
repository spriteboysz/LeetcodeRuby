# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-28 21:27
# FilePath: P2074. 反转偶数长度组的节点.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def reverse_even_length_groups(head)
    nodes = []
    while head
        nodes << head
        head = head.next
    end
    k, n, pos = 1, nodes.size, 0
    while pos < n - 1
        m = [pos + k, n].min - pos
        nodes[pos, m] = nodes[pos, m].reverse if m % 2 == 0
        pos += k
        k += 1
    end
    nodes.each_with_index { |node, i|
        next if i == 0
        nodes[i - 1].next = node
    }
    nodes[-1].next = nil
    nodes.first
end

if __FILE__ == $PROGRAM_NAME
    p reverse_even_length_groups(ListNode.create("[5,2,6,3,9,1,7,3,8,4]")).to_s
end


