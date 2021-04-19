//
//  19-e2.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/7.
//

// Remove Nth Node From End of List
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/603/
// https://leetcode.com/problems/remove-nth-node-from-end-of-list/

// 删除链表的倒数第N个节点
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn2925/
// https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/

// MARK: One pass algorithm

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var i = head
    var j = head

    for _ in 0 ..< n {
        i = i?.next
    }

    guard i != nil else {
        return head?.next
    }

    while i?.next != nil {
        i = i?.next
        j = j?.next
    }

    j?.next = j?.next?.next
    return head
}
