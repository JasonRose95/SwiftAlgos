class Program {
    func getNthFib(n: Int) -> Int {
        var Idx = 3
        var fibArray = [0, 1]
        while Idx < n {
            let newValue = fibArray[0] + fibArray[1]
            fibArray[0] = fibArray[1]
            fibArray[1] = newValue
            Idx = Idx + 1
        }
        return n > 1 ? fibArray[1] : fibArray[0]

    }
    print(getNthFib(n: 5))
}

