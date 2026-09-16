class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashMap = [String: [String]]()

        for str in strs {
            let sorted = String(str.sorted())
            hashMap[sorted, default: []].append(str)
        }

        return Array(hashMap.values)
    }
}
