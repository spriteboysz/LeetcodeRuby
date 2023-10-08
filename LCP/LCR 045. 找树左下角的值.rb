# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 16:09
# FilePath: LCR 045. 找树左下角的值.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} root
# @return {Integer}
def find_bottom_left_value(root)
    bottom_left = root.val
    queue = [root]
    until queue.empty?
        n = queue.size
        (0...n).each { |i|
            node = queue.shift
            next if node.nil?
            bottom_left = node.val if i == 0
            queue << node.left unless node.left.nil?
            queue << node.right unless node.right.nil?
        }
    end
    bottom_left
end

if __FILE__ == $PROGRAM_NAME
    p find_bottom_left_value(TreeNode.create("[1,2,3,4,null,5,6,null,null,7]"))
end


