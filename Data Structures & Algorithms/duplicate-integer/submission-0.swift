class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var set = Set<Int>()
        for i in 0..<nums.count {
            let inserted = set.insert(nums[i]).inserted
            if !inserted {
                return true
            }
        }
        return false
    }
}
