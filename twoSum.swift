class Program {
  func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
      var numbersHashMap = [Int : Bool]()

      for number in array {
          let potentialMatch = targetSum - number

          if let exists = numbersHashMap[potentialMatch], exists {
              return [potentialMatch, number]
          } else {
              numbersHashMap[number] = true
          }
      }
    return []
  }
}
