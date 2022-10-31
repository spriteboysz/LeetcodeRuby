# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-31 23:26
# FilePath: P0116. 填充每个节点的下一个右侧节点指针.rb
# Description:

# Definition for Node.
class Node
    attr_accessor :val, :left, :right, :next

    def initialize(val)
        @val = val
        @left, @right, @next = nil, nil, nil
    end
end

# @param {Node} root
# @return {Node}
def connect(root)
    return root if root.nil?
    queue = [root]
    until queue.empty?
        size = queue.size
        (0...size).each do |i|
            node = queue.shift
            next if node.nil?
            node.next = queue[0] if i < size - 1
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
    end
    root
end

if __FILE__ == $PROGRAM_NAME
    root = TreeNode.create("[1,2,3,4,5,6,7]")
    p connect(root).to_s
end
