# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-18 21:29
# FilePath: P2807. 在链表中插入最大公约数.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def insert_greatest_common_divisors(head)
    def gcd(a, b)
        return a if b == 0
        gcd(b, a % b)
    end

    nodes = []
    while head
        nodes << head
        nodes << nil
        head = head.next
    end
    nodes.each_index { |i|
        next if i.even? || i == nodes.length - 1
        nodes[i] = ListNode.new(gcd(nodes[i - 1].val, nodes[i + 1].val))
    }
    nodes.each_with_index { |node, i|
        next if i == 0
        nodes[i - 1].next = node
    }
    nodes[-2].next = nil
    nodes[0]
end

if __FILE__ == $PROGRAM_NAME
    head = ListNode.create("[18,6,10,3]")
    p insert_greatest_common_divisors(head).to_s
end


