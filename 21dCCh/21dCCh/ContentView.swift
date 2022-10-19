/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let d = ListNode(0)
        var node = d
    
        var l1 = list1
        var l2 = list2
    
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                node.next = l1
                l1 = l1!.next
            } else {
                node.next = l2
                l2 = l2!.next
            }
            node = node.next!
        }
    
        node.next = l1 ?? l2
    
        return d.next
    }
}

//issibsequence

class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty {return true}
        var i = 0
        var sArray = Array(s)

        for j in t {
            if sArray[i] == j {
                i += 1
            }
            if i == s.count {
                return true
            }
        }
        return false
   }
}


class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
        var sum = 0
        for n in nums {
            sum += n
        }
        var left = 0
        for i in 0..<nums.count {
            let right = sum - left - nums[i]
            if right == left {
                return i
            }
            left += nums[i]
        }
        return -1
    }
}
