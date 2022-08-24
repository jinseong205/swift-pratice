//Day10 Closuer

let myName:String = {
	return "고마우미"
}()

print(myName)

//Clouser Def
let myRealName : (String) -> String = { (name:String) -> String in 
				 return "개발하는 \(name)"
				}

print(myRealName("정진성"))

let myRealNameLogic : (String) -> Void = { (name: String) in
										  print("개발하는 \(name)")
										 }

myRealNameLogic("정진성")

let myNumberLogic : (Int) -> Void = { (number: Int) in
										  print(number)
										 }

myNumberLogic(1)