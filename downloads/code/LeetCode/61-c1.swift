//
//  61-c1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/6/2.
//

// Rotate List
// https://leetcode.com/explore/learn/card/linked-list/213/conclusion/1295/
// https://leetcode.com/problems/rotate-list/

// 旋转链表
// https://leetcode-cn.com/leetbook/read/linked-list/f00a2/
// https://leetcode-cn.com/problems/rotate-list/

// MARK: 闭合为环

func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
    guard k > 0 else {
        return head
    }

    var count = 1
    var node = head

    while node?.next != nil {
        count += 1

        node = node?.next
    }

    var addCount = count - k % count

    node?.next = head

    while addCount > 0 {
        node = node?.next

        addCount -= 1
    }

    let newHead = node?.next
    node?.next = nil

    return newHead
}
