class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashmap = [Int: Int]()

        for (index, element) in nums.enumerated() {
            let complement = target - element

            if let complementIndex = hashmap[complement] {
                return [complementIndex, index]
            }
            hashmap[element] = index
        }
        return []
    }
}
