//배열, 세션, 딕셔너리, 튜플
var myArray : [Int] = [1,2,3,4,5,6,7,8,9]

for item in myArray{
	print("item \(item)")
}

for item in myArray where item > 5{
	print("5보다 큰수 \(item)")
}