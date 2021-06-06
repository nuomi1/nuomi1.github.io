//
//  21-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/9.
//  Updated by nuomi1 on 2021/5/29.
//

// Merge Two Sorted Lists
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/771/
// https://leetcode.com/explore/learn/card/linked-list/213/conclusion/1227/
// https://leetcode.com/problems/merge-two-sorted-lists/

// 合并两个有序链表
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnnbp2/
// https://leetcode-cn.com/leetbook/read/linked-list/fnzd1/
// https://leetcode-cn.com/problems/merge-two-sorted-lists/

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard let list1 = l1, let list2 = l2 else {
        return l1 ?? l2
    }

    var list3: ListNode?

    var node1: ListNode? = list1
    var node2: ListNode? = list2
    var node3: ListNode? = ListNode(0)

    while node1 != nil, node2 != nil {
        if node1!.val > node2!.val {
            node3?.next = node2
            node2 = node2?.next
        } else {
            node3?.next = node1
            node1 = node1?.next
        }

        // 跳过第一个无用结点
        if list3 == nil {
            list3 = node3?.next
        }

        node3 = node3?.next
    }

    if node1 != nil {
        node3?.next = node1
    }

    if node2 != nil {
        node3?.next = node2
    }

    return list3
}
