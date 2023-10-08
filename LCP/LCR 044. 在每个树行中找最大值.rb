# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 16:02
# FilePath: LCR 044. 在每个树行中找最大值.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer[]}
def largest_values(root)
    levels = []
    return levels if root.nil?
    queue = [root]
    until queue.empty?
        next if queue.first.nil?
        maximum, n = queue.first.val, queue.size
        (0...n).each {
            node = queue.shift
            next if node.nil?
            maximum = [maximum, node.val].max
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        }
        levels << maximum
    end
    levels
end

if __FILE__ == $PROGRAM_NAME
    p largest_values(TreeNode.create("[1,3,2,5,3,null,9]"))
end


