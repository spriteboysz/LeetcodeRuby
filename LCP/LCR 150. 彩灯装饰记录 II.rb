# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 11:47
# FilePath: LCR 150. 彩灯装饰记录 II.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer[][]}
def decorate_record(root)
    levels = []
    return levels if root.nil?
    queue = [root]
    until queue.empty?
        n, level = queue.size, []
        (0...n).each { |_|
            node = queue.shift
            next if node.nil?
            level << node.val
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        }
        levels << level
    end
    levels
end

if __FILE__ == $PROGRAM_NAME
    p decorate_record(TreeNode.create("[8,17,21,18,null,null,6]"))
end


