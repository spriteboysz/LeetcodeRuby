# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:29
# FilePath: LCR 140. 训练计划 II.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @param {Integer} cnt
# @return {ListNode}
def training_plan(head, cnt)
    dummy = ListNode.new(-1, head)
    slow, fast = dummy, dummy
    while cnt > 0
        fast = fast.next
        cnt -= 1
    end
    until fast.nil?
        slow = slow.next
        fast = fast.next
    end
    slow
end

if __FILE__ == $PROGRAM_NAME
    p training_plan(head = ListNode.create("[2,4,7,8]"), 1).to_s
end


