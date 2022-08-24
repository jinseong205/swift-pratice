//Day08 function , parameter name

func myFunc(name : String) -> String{
	return "안녕하세요? \(name) 입니다."
}
//function call
print(myFunc(name: "고마우미"))


func myFuncSecond(with name : String) -> String{
	return "안녕하세요? \(name) 입니다."
}
//function call
print(myFuncSecond(with: "미우마고"))


func myFuncThird(_ name : String) -> String{
	return "안녕하세요? \(name) 입니다."
}
//function call
print(myFuncThird("정진성"))

