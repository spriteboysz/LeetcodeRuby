# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 20:43
# FilePath: 剑指 Offer II 045. 二叉树最底层最左边的值.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer}
def find_bottom_left_value(root)
    left, queue = 0, [root]
    until queue.empty?
        flag, size = true, queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            if flag
                left = node.val
                flag = false
            end
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        end
    end
    left
end

if __FILE__ == $PROGRAM_NAME
    p find_bottom_left_value(TreeNode.create("[1,2,3,4,null,5,6,null,null,7]"))
end
