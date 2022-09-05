//Day11 paramter 로서 clouser
import Foundation


class MyFriend{
	var name : String
	
	init(_ name: String = "이름 없음"){
		self.name = name
		print("MyFriend 가 메모리에 올라갔다." + self.name)
	}
	
	deinit{
		print("메모리에서 사라짐 - " + self.name)
	}
	
	//deinit 검증을 위해 작성
	var calledTimes = 0
	let MAX_TIMES = 5
	
	static var instancesOfSelf = [MyFriend]()
	
	class func destroySelf(object:MyFriend){
		instancesOfSelf = instancesOfSelf.filter{ (aFriend : MyFriend) in 
													aFriend !== object
												}
	}
	
	func call(){
		calledTimes += 1 
		print("called \(calledTimes)")
		if calledTimes > MAX_TIMES{
			MyFriend.destroySelf(object: self)
		}
	}
	
}

let myFrined = MyFriend("강푸른")
let aFrined = MyFriend("김태형")

let myObjectMemoryAddress = Unmanaged.passUnretained(myFrined).toOpaque()
print(myObjectMemoryAddress)
let secondObjectMemoryAddress = Unmanaged.passUnretained(aFrined).toOpaque()
print(secondObjectMemoryAddress)


weak var aFrinedToBeDestoried = MyFriend("개발하는 정대리")

if aFrinedToBeDestoried != nil {
	aFrinedToBeDestoried!.call()
}else{
	print("객체가 더이상 메모리에 없습니다.")
}