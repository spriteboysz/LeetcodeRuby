# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-21 23:26
# FilePath: P2816. 翻倍以链表形式表示的数字.rb
# Description:

load "common/leetcode.rb"

# @param {ListNode} head
# @return {ListNode}
def double_it(head)
    nums = []
    while head
        nums << head.val
        head = head.next
    end
    carry, i, ret = 0, nums.size - 1, []
    while i >= 0 || carry != 0
        carry += nums[i] * 2 if i >= 0
        ret.unshift(carry % 10)
        carry /= 10
        i -= 1
    end

    dummy = ListNode.new(-1)
    cur = dummy
    ret.each { |num|
        cur.next = ListNode.new(num)
        cur = cur.next
    }
    dummy.next
end

if __FILE__ == $PROGRAM_NAME
    head = ListNode.create("[9,9,9,8]")
    p double_it(head).to_s
end


