class Program {
  func isPalindrome(string: String) -> Bool {
    var reversedString = ""
for char in string.reversed() {
    reversedString.append(char)
}
    return string == reversedString
  }
}