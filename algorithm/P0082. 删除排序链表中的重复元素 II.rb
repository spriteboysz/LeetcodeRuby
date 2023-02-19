# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 22:00
# FilePath: P0082. 删除排序链表中的重复元素 II.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    return nil if head.nil?
    nodes, hash = [], Hash.new(0)
    until head.nil?
        nodes << head
        hash[head.val] += 1
        head = head.next
    end
    nodes.select! { |node| hash[node.val] == 1 }
    return nil if nodes.empty?
    nodes.each_with_index do |node, i|
        next if i == nodes.length - 1
        node.next = nodes[i + 1]
    end
    nodes[-1].next = nil
    nodes[0]
end

if __FILE__ == $PROGRAM_NAME
    p delete_duplicates(ListNode.create("[1,2,3,3,4,4,5]")).to_s
end


