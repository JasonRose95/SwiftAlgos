class Program {
  class BST {
    var value: Int
    var left: BST?
    var right: BST?

    init(value: Int) {
      self.value = value
      left = nil
      right = nil
    }
  }

  func findClosestValueInBST(tree: BST?, target: Int) -> Int {
    var closest = tree!.value
    return findClosestValueInBSTHelper(tree: tree, target: target, closest: closest)
    
  }
  func findClosestValueInBSTHelper(tree: BST?, target: Int, closest inout Int) -> Int{
 {
 if tree === nil {
     return closest
 }   
 if let tree = tree {
     let closestDifference = target - closest
     let currentDifference = target - tree.value

     if closestDifference.magnitude > currentDifference.magnitude {
         closest = tree.value
     }
 }
 if let tree = tree, target < tree.value {
     if let left = tree.left {
         return findClosestValueInBSTHelper(tree: left, target: target, closest: &closest)

     }else {
         return closest
     }
 }else if let tree =tree, target > tree.value {
     if let right = tree.right {
         return findClosestValueInBSTHelper(tree: right, target: target, closest: &closest)
     } else {
         return closest
     }
 } else {
     return closest
 }
}
  }
