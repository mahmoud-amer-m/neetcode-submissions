class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        let aAsciiValue = Character("a").asciiValue!

        var groupedAnagrams = [[Int]: [String]]()

        for str in strs {
            var arr = [Int](repeating: 0, count: 26)
            for char in str {
                let index = Int(char.asciiValue! - aAsciiValue)
                arr[index] += 1
            }
            groupedAnagrams[arr, default: []].append(str)
        }

        return Array(groupedAnagrams.values)
    }
}
