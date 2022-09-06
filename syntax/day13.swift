class Friend{
	var name : String
	
	init(_ name:String){
		self.name = name
	}
	
	func sayHi(){
		print("안녕 난 \(self.name)라고해")
	}
}

class BestFriend : Friend{
	override init(_ name: String){
		//super = 부모
		super.init("베프" + name)
	}
	
	override func sayHi(){
		super.sayHi()
	}
}


let myFriend = Friend("김인혁")
myFriend.sayHi()
let myBestFriend = BestFriend("김진호")
myBestFriend.sayHi()
