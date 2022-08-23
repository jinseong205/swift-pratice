//optional > 값이 있는지 없는지 모른다.

var someVar : Int? = nil

if someVar == nil{
	someVar = 90
}



//언랩핑이란? wrap을 벗기는것 
if let otherVar = someVar{
	print("unwrapping. > 값이 있다. othervar \(otherVar)")
}else{
	print("unwrapping. > 값이 없다. ")
}


someVar = nil
let myVal = someVar ?? 10
print("myVal \(myVal)")


var firstVal : Int? = 30
var secondVal : Int? = 50

print("firstVal :  \(firstVal)")
print("secondVal : \(secondVal)")

func unwrap(_ parameter: Int?){
	print("unwrap() called")
	//값이 없으면 retrun
	guard let unWrappedParam = parameter else{
			return
		}
	print("unWrappedParam \(unWrappedParam)")
}

unwrap(firstVal)
unwrap(secondVal)


