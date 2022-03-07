class Program {
  func findThreeLargestNumbers(array: [Int]) -> [Int] {
    var largestNumbers: [Int: Int] = []
    for i in array {
        largestNumbers[array[i]] = 0
        for j in array {
            if array[i] > array[j]
            largestNumbers[array[i]] += 1
        }
    }
    return largestNumbers
  }
}
