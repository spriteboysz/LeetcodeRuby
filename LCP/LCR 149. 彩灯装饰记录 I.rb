# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:42
# FilePath: LCR 149. 彩灯装饰记录 I.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer[]}
def decorate_record(root)
    levels = []
    return levels if root.nil?
    queue = [root]
    until queue.empty?
        n = queue.size
        (0...n).each { |_|
            node = queue.shift
            next until node
            levels << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        }
    end
    levels
end

if __FILE__ == $PROGRAM_NAME
    p decorate_record(TreeNode.create("[8,17,21,18,null,null,6]"))
end


