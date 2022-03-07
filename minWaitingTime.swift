class Program {
  func minimumWaitingTime(_ queries: inout [Int]) -> Int {
    queries.sort()

    var totalTime = 0
    for(idx, stepTime) in queries.enumerated() {
        let queriesLeft = queries.count - (idx + 1)
        totalTime += stepTime * queriesLeft
    }


    return totalTime
  }
}