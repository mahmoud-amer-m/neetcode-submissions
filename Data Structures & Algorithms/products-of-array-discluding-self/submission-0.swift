class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var output = [Int](repeating: 1, count: nums.count)

        var prefix = 1
        for i in 0..<nums.count {
            output[i] = prefix
            prefix *= nums[i]
        }

        var suffix = 1
        for i in stride(from: nums.count - 1, through: 0, by: -1) {
            output[i] *= suffix
            suffix *= nums[i]
        }

        return output
    }
}
