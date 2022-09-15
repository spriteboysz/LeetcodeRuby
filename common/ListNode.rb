# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-13 22:46
# FilePath: ListNode.rb
# Description: ListNode class

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next

    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end

    def self.create(data)
        return [] if data.empty?

        values = data[1..data.length - 2].split(',').map(&:to_i)
        head = new(-1)
        cur = head
        values.each { |v|
            cur.next = new(v)
            cur = cur.next
        }
        head.next
    end

    def to_s(head = self)
        return '[]' if head.nil?

        values = []
        while head
            values.append(head.val.to_i)
            head = head.next
        end
        '[' + values.join(',') + ']'
    end
end

if __FILE__ == $PROGRAM_NAME
    data = '[1,2,4,6,8]'
    head = ListNode.create(data)
    p head.to_s
end



