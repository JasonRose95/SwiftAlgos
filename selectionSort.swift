class Program {
  func selectionSort(array: inout [Int]) -> [Int] {
    var currentIndex = 0

    while currentIndex < array.count - 1{
      var indexOfSmallest = currentIndex

      for i in currentIndex + 1 ..< array.count {
        if array[indexOfSmallest] > array[i] {
          indexOfSmallest = i
        }
      }
      swapHelper(currentIndex, indexOfSmallest, &array)
      currentIndex = currentIndex + 1
    }
    return array
  }
  func swapHelper(_ firstIndex: Int, _ secondIndex: Int, _ array: inout [Int]){
    let temp = array[secondIndex]
    
    array[secondIndex] = array[firstIndex]
    array[firstIndex] = temp
  }
}
