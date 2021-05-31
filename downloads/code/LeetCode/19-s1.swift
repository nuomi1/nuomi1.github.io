//
//  19-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/7.
//  Updated by nuomi1 on 2021/5/23.
//

// Remove Nth Node From End of List
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/93/linked-list/603/
// https://leetcode.com/explore/learn/card/linked-list/214/two-pointer-technique/1296/
// https://leetcode.com/problems/remove-nth-node-from-end-of-list/

// 删除链表的倒数第N个节点
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn2925/
// https://leetcode-cn.com/leetbook/read/linked-list/jf1cc/
// https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list/

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var fastNode = head
    var slowNode: ListNode?

    var count = n

    while fastNode != nil {
        if count <= 0 {
            slowNode = slowNode == nil ? head : slowNode?.next
        }

        fastNode = fastNode?.next

        count -= 1
    }

    guard slowNode != nil else {
        return head?.next
    }

    slowNode?.next = slowNode?.next?.next
    return head
}
