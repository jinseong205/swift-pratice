
//final 을 쓰면 상속을 막는다
final class Friend{
	var name:String
	init(name: String){
		self.name = name
	}
}

let myFrined = Friend(name: "송정곤")
print(myFrined.name)


/*
//Friend 상속
class BestFriend :Friend{
	override init(name: String){
		super.init(name: "BestFriend" + name)

	}
}


let myBestFrined = Friend(name: "이강솔")
print(myBestFrined.name)
*/