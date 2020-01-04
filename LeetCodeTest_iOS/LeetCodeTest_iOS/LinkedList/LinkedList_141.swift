//
//  LinkedList_141.swift
//  LeetCodeTest_iOS
//
//  Created by sos1a2a3a on 2020/1/4.
//  Copyright © 2020 lijiarui. All rights reserved.
//

import UIKit
///https://leetcode-cn.com/problems/linked-list-cycle/
class LinkedList_141: NSObject {
    
    
    func hasCycle(_ head:ListNode ) -> Bool {
        
        //通过快慢指针
        var slow = head
        
        var quick = head.next
        
        while quick != nil && quick?.next != nil{
            slow = slow.next!
            quick = quick?.next!.next
            
            if slow == quick   {
                return true
            }
        }
        return false
    }
}
