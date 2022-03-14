import UIKit

var colorArray = ["red", "green", "green", "black", "blue", "yellow", "red", "green", "yellow", "red", "red", "green", "green", "grey", "purple", "orange", "grey", "blue", "white", "yellow", "blue", "red", "green", "orange", "purple", "blue", "black"]

func getMostCommonColor(_ array: [String]) -> [String]{
    
    var topColors: [String] = []
    var colorDict : [String: Int] = [:]
    for i in array {
        if colorDict[i] == nil {
        colorDict[i] = 1
        } else{
            colorDict[i]! += 1
        }
    }
    
    let highestValue = colorDict.values.max()
    
    for (color, count) in colorDict{
        if colorDict[color] == highestValue {
            topColors.append(color)
        }
    }
    
    return topColors
}

getMostCommonColor(colorArray)

