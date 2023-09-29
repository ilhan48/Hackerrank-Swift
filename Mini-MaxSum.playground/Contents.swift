import Foundation

/*
 Problem Link: https://www.hackerrank.com/challenges/mini-max-sum/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
 */
/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    
    var minSum = 0
    var maxSum = 0
    var sortedArray = arr.sorted()
    
    for i in 0...3{
        minSum += sortedArray[i]
    }
    for i in 1...4{
        maxSum += sortedArray[i]
    }
    print(minSum , terminator:" ")
    print(maxSum, terminator:"")
    

}

guard let arrTemp = readLine()?.replacingOccurrences(of: "\\s+$", with: "", options: .regularExpression) else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == 5 else { fatalError("Bad input") }

miniMaxSum(arr: arr)
