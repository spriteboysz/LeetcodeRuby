# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 16:20
# FilePath: P0513. 找树左下角的值.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer}
def find_bottom_left_value(root)
    return 0 if root.nil?
    left, queue = 0, [root]
    until queue.empty?
        flag, size = true, queue.length
        (0...size).each do |_|
            node = queue.shift
            next if node.nil?
            if flag
                flag = false
                left = node.val
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
