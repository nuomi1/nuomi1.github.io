//
//  21-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/9.
//

// Merge Two Sorted Lists
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/771/
// https://leetcode.com/problems/merge-two-sorted-lists/

// 合并两个有序链表
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnnbp2/
// https://leetcode-cn.com/problems/merge-two-sorted-lists/

// MARK: 递归

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let l1 = l1, let l2 = l2 else {
        return l1 ?? l2
    }

    let l3: ListNode?

    if l1.val > l2.val {
        l3 = l2
        l3?.next = mergeTwoLists(l1, l2.next)
    } else {
        l3 = l1
        l3?.next = mergeTwoLists(l1.next, l2)
    }

    return l3
}
