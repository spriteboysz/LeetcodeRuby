# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-02 22:47
# FilePath: P0929. 独特的电子邮件地址.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} emails
# @return {Integer}
def num_unique_emails(emails)
    hash = Hash.new(false)
    emails.each do |email|
        local, domain = email.split("@")
        local.delete!(".")
        local = local.split("+")[0]
        hash[local + "@" + domain] = true
    end
    hash.size
end

if __FILE__ == $PROGRAM_NAME
    p num_unique_emails(%w[a.a@leetcode.com b@leetcode.com c@leetcode.com])
end
