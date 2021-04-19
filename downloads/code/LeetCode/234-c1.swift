//
//  234-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/10.
//

// Palindrome Linked List
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/772/
// https://leetcode.com/problems/palindrome-linked-list/

// 回文链表
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnv1oc/
// https://leetcode-cn.com/problems/palindrome-linked-list/

// MARK: 将值复制到数组中后用双指针法

func isPalindrome(_ head: ListNode?) -> Bool {
    var p = head
    var list = [ListNode]()

    while p != nil {
        list.append(p!)
        p = p?.next
    }

    guard !list.isEmpty else {
        return true
    }

    var i = list.indices.first!
    var j = list.indices.last!

    while i < j {
        guard list[i].val == list[j].val else {
            return false
        }

        i += 1
        j -= 1
    }

    return true
}
