//
//  206-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/8.
//

// Reverse Linked List
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/560/
// https://leetcode.com/problems/reverse-linked-list/

// 反转链表
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnnhm6/
// https://leetcode-cn.com/problems/reverse-linked-list/

// MARK: Iterative

func reverseList(_ head: ListNode?) -> ListNode? {
    var newHead: ListNode?
    var currentNode = head

    while currentNode != nil {
        let tempNode = currentNode?.next
        currentNode?.next = newHead
        newHead = currentNode
        currentNode = tempNode
    }

    return newHead
}