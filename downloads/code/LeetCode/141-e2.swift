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
    var slow = head
    var fast = head

    while slow != nil, fast != nil, fast?.next != nil {
        slow = slow?.next
        fast = fast?.next?.next

        if slow === fast {
            return true
        }
    }

    return false
}
