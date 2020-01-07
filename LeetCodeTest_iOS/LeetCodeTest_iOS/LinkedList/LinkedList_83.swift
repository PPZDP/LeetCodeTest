//
//  LinkedList_83.swift
//  LeetCodeTest_iOS
//
//  Created by sos1a2a3a on 2020/1/7.
//  Copyright © 2020 lijiarui. All rights reserved.
//

import UIKit
/// https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/
class LinkedList_83: NSObject {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        
        let nowNode = ListNode(0)
        
        nowNode.next = head
        
        var slow = nowNode.next
        
        var quick = nowNode.next?.next
        
        while slow != nil && quick != nil  {
            if slow?.val == quick?.val {
                let temp = quick
                quick = quick?.next
                slow?.next  = temp?.next
            }
            else {
                slow = slow?.next
                quick = quick?.next
            }
        }
        return nowNode.next
    }
}
