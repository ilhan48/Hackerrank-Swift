import Foundation

/*
 Problem Link: https://www.hackerrank.com/challenges/plus-minus/problem?isFullScreen=true
 */
/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> Void {
    
    var plus: [Int] = []
    var mines: [Int] = []
    var zeros: [Int] = []
    
    for i in arr {
        if i < 0 {
            mines.append(i)
        } else if i > 0 {
            plus.append(i)
        } else {
            zeros.append(i)
        }
    }
    print(Double(Double(plus.count)/Double(arr.count)))
    print(Double(Double(mines.count)/Double(arr.count)))
    print(Double(Double(zeros.count)/Double(arr.count)))

}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
