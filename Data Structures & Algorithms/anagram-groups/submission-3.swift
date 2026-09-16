class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashmap = [[Int]: [String]]()

        for str in strs {
            var arr = [Int](repeating: 0, count: 26)
            for char in str {
                let index = (char.asciiValue ?? 0) - (Character("a").asciiValue ?? 0)
                arr[Int(index)] += 1
            }
            hashmap[arr, default: []].append(str)
        }

        return Array(hashmap.values)
    }
}
