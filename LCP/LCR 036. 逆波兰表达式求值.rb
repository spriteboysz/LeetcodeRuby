# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 15:42
# FilePath: LCR 036. 逆波兰表达式求值.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} tokens
# @return {Integer}
def eval_rpn(tokens)
    stack = []
    tokens.each do |token|
        case token
        when '+' then
            stack.push(stack.pop + stack.pop)
        when '-' then
            stack.push(-stack.pop + stack.pop)
        when '*' then
            stack.push(stack.pop * stack.pop)
        when '/' then
            stack.push((1.0 / stack.pop.to_f * stack.pop.to_f).to_i)
        else
            stack.push(token.to_i)
        end
    end
    stack.pop
end

if __FILE__ == $PROGRAM_NAME
    p eval_rpn(tokens = ["10", "6", "9", "3", "+", "-11", "*", "/", "*", "17", "+", "5", "+"])
end


