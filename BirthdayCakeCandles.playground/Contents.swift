import Foundation

/*
 Problem Link: https://www.hackerrank.com/challenges/birthday-cake-candles/problem?isFullScreen=true
 */

/*
 * Complete the 'birthdayCakeCandles' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY candles as parameter.
 */

func birthdayCakeCandles(candles: [Int]) -> Int {
    
    var max = candles[0]
    var count = 0
    
    for i in candles{
        if max < i {
            max = i
        }
    }
    
     for i in candles{
        if max == i {
            count += 1
        }
    }
    return count
    
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let candlesCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let candlesTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let candles: [Int] = candlesTemp.split(separator: " ").map {
    if let candlesItem = Int($0) {
        return candlesItem
    } else { fatalError("Bad input") }
}

guard candles.count == candlesCount else { fatalError("Bad input") }

let result = birthdayCakeCandles(candles: candles)

fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
