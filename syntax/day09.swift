//Day09 Generic

struct myArray<SomeElement>{
	//generic을 담은 빈 배열
	var elements: [SomeElement] = [SomeElement]()
	init(_ elements: [SomeElement]){
		self.elements = elements
	}
} 

var myIntegerArr = myArray([1,2,3])
print(myIntegerArr)

var myStringArr = myArray(["가","나","다"])
print(myStringArr)

struct friend{
	var name: String
}

let friend01 = friend(name: "진성")
let friend02 = friend(name: "푸른")
let friend03 = friend(name: "태형")

var myFriendArr = myArray([friend01, friend02, friend03])
print(myFriendArr)