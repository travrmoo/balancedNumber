import UIKit

func balancedNumber(_ number: Int) -> String {

//create array of all digits of parameter number
var arrNum = String(number).compactMap { Int(String($0)) }

if arrNum.count <= 2 {
  return "Balanced"
}
else if arrNum.count > 2 && arrNum.count % 2 == 0 {
// if array.count == even, remove the two middle indexes
    arrNum.remove(at: arrNum.count / 2)
    arrNum.remove(at: arrNum.count / 2)
}else{
//if array.count == odd, remove the one middle index
    arrNum.remove(at: arrNum.count / 2)
}
//split midpoint removed array into left and right arrays
let midpoint = arrNum.count / 2
let leftArr = arrNum[..<midpoint]
let rightArr = arrNum[midpoint...]
  
return leftArr.reduce(0,+) == rightArr.reduce(0,+) ? "Balanced" : "Not Balanced"
}

balancedNumber(56239814)
