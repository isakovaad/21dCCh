# 21dCCh
Running Sum of 1d Array 
<img width="683" alt="running sum of 1d array" src="https://user-images.githubusercontent.com/38157887/196028482-f6752e64-d273-4e73-a658-8aad265205fa.png">

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var nums = nums
        for i in 1..<nums.count {
            nums[i] += nums[i-1]
        }
        return nums
    }
}
