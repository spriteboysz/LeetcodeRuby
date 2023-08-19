# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-19 15:12
# FilePath: 面试题 04.10. 检查子树.rb
# Description:

load "common/leetcode.rb"
# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {Boolean}
def check_sub_tree(t1, t2)
    def check(t1, t2)
        return true if t1 == nil and t2 == nil
        return false if t1 == nil or t2 == nil
        return false if t1.val != t2.val
        check(t1.left, t2.left) and check(t1.right, t2.right)
    end

    return true if t1 == nil and t2 == nil
    return false if t1 == nil or t2 == nil
    if t1.val == t2.val and check(t1, t2)
        return true
    end
    check_sub_tree(t1.left, t2) or check_sub_tree(t1.right, t2)
end

if __FILE__ == $PROGRAM_NAME
    t1 = TreeNode.create("[1,2,3]")
    t2 = TreeNode.create("[2]")
    p check_sub_tree(t1, t2)
end


