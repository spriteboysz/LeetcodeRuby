# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-30 00:00
# FilePath: P0811. 子域名访问计数.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
    hash = Hash.new(0)
    cpdomains.each do |cpdomain|
        num, domains = cpdomain.split(" ")
        domains = domains.split(".").reverse
        (1..domains.size).each do |i|
            domain = domains[0, i].reverse.join(".")
            hash[domain] += num.to_i
        end
    end
    visits = []
    hash.each_pair do |k, v|
        visits << v.to_s + " " + k
    end
    visits
end

if __FILE__ == $PROGRAM_NAME
    p subdomain_visits(["900 google.mail.com", "50 yahoo.com", "1 intel.mail.com", "5 wiki.org"])
end
