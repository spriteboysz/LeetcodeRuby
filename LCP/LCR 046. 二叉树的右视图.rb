# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 16:15
# FilePath: LCR 046. 二叉树的右视图.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} root
# @return {Integer[]}
def right_side_view(root)
    right = []
    return right if root.nil?
    queue = [root]
    until queue.empty?
        n, last = queue.size, 0
        (0...n).each { |_|
            node = queue.shift
            next unless node
            last = node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        }
        right << last
    end
    right
end

if __FILE__ == $PROGRAM_NAME
    p right_side_view(TreeNode.create("[1,2,3,null,5,null,4]"))
end


