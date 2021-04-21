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
    var node = head
    var nodes = [ListNode]()

    while node != nil {
        nodes.append(node!)
        node = node?.next
    }

    guard !nodes.isEmpty else {
        return true
    }

    var leftIndex = nodes.startIndex
    var rightIndex = nodes.index(before: nodes.endIndex)

    while leftIndex < rightIndex {
        guard nodes[leftIndex].val == nodes[rightIndex].val else {
            return false
        }

        nodes.formIndex(after: &leftIndex)
        nodes.formIndex(before: &rightIndex)
    }

    return true
}
