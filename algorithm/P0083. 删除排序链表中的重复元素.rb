# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 22:39
# FilePath: P0083. 删除排序链表中的重复元素.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    return if head.nil?
    while head.next
        break unless head.val == head.next.val
        head.next = head.next.next
    end
    delete_duplicates(head.next)
    head
end

if __FILE__ == $PROGRAM_NAME
    p delete_duplicates(ListNode.create("[1,1,2,3,3]")).to_s
end


