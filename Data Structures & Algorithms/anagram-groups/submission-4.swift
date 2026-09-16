class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var hashmap = [[Int]: [String]]()
        guard let aAsciiValue = Character("a").asciiValue else {
            return []
        }

        for str in strs {
            var arr = [Int](repeating: 0, count: 26)
            for char in str {
                let index = char.asciiValue! - aAsciiValue
                arr[Int(index)] += 1
            }
            hashmap[arr, default: []].append(str)
        }

        return Array(hashmap.values)
    }
}
