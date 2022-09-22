# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 23:07
# FilePath: P0382. 链表随机节点.rb
# Description:

load "common/leetcode.rb"

class Solution
    attr_accessor :values
    # :type head: ListNode
    def initialize(head)
        @values = []
        while head
            @values << head.val
            head = head.next
        end
    end

    # :rtype: Integer
    def get_random
        @values[rand(@values.length)]
    end
end

if __FILE__ == $PROGRAM_NAME
    solution = Solution.new(head = ListNode.create("[1, 2, 3]"))
    p solution.get_random
    p solution.get_random
    p solution.get_random
    p solution.get_random
end
