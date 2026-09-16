class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var occurances = [Character: Int]()

        for char in s {
            occurances[char, default: 0] += 1
        }

        for char in t {
            occurances[char, default: 0] -= 1
        }

        return occurances.values.allSatisfy { $0 == 0 }
    }
}
