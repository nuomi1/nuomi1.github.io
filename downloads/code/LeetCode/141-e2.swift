//
//  141-e2.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/11.
//

// Linked List Cycle
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/773/
// https://leetcode.com/problems/linked-list-cycle/

// 环形链表
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnwzei/
// https://leetcode-cn.com/problems/linked-list-cycle/

// MARK: Floyd's Cycle Finding Algorithm

func hasCycle(_ head: ListNode?) -> Bool {
    var slowNode = head
    var fastNode = head

    while slowNode != nil, fastNode != nil, fastNode?.next != nil {
        slowNode = slowNode?.next
        fastNode = fastNode?.next?.next

        if slowNode === fastNode {
            return true
        }
    }

    return false
}
