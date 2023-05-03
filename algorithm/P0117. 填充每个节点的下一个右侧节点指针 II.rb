# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-03 18:07
# FilePath: P0117. 填充每个节点的下一个右侧节点指针 II.rb
# Description:

load "common/leetcode.rb"
# @param {Node} root
# @return {Node}
def connect(root)
    return if root.nil?
    queue = [root]
    until queue.empty?
        size = queue.length
        last = nil
        (0...size).each do |i|
            node = queue.shift
            next if node.nil? || last.nil?
            last.next = node unless i == 0
            last = node
            last.next = nil if i == size - 1
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
    end
    root
end

if __FILE__ == $PROGRAM_NAME
    p connect(TreeNode.create("[1,2,3,4,5,null,7]"))
end


