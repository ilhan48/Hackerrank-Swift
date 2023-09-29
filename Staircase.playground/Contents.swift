import Foundation

/*
 Problem Link: https://www.hackerrank.com/challenges/staircase/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
 */
/*
 * Complete the 'staircase' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

func staircase(n: Int) -> Void {
    var index = 1
    
    while index <= n {
        var q = n-index
        while q != 0 {
                print(" ",terminator: "")
                q -= 1
            }
        for i in 1...index {
            
            print("#", terminator: "")
            
        }
        print()
        index += 1
    }
    

}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

staircase(n: n)
