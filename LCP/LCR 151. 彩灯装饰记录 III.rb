# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:52
# FilePath: LCR 151. 彩灯装饰记录 III.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer[][]}
def decorate_record(root)
    levels = []
    return levels if root.nil?
    queue, depth = [root], 1
    until queue.empty?
        n, level = queue.size, []
        (0...n).each { |i|
            node = queue.shift
            next if node.nil?
            if depth % 2 == 1
                level << node.val
            else
                level.unshift(node.val)
            end
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        }
        levels << level
        depth += 1
    end
    levels
end

if __FILE__ == $PROGRAM_NAME
    p decorate_record(TreeNode.create("[8,17,21,18,null,null,6]"))
end


