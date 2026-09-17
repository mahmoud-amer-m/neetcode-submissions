class Solution {

    func encode(_ strs: [String]) -> String {
        let encoded = strs.reduce(into: "") { partialResult, word in
            partialResult.append("\(word.count)#\(word)")
        }
        return encoded
    }

    func decode(_ str: String) -> [String] {
        var results = [String]()

        let chars = Array(str)

        var i = 0
        var countString = ""
        while i < chars.count {

            if chars[i].isNumber {
                countString.append(chars[i])
                var j = i + 1
                while chars[j] != "#" {

                    countString.append(chars[j])
                    j += 1
                }

                let wordLength = Int(countString)!
                let start = j + 1
                let end = start + wordLength
                let arr = chars[start..<end]

                let word = String(chars[start..<end])
                results.append(word)
                i = end
                countString = ""
            }
        }

        return results
    }
}
