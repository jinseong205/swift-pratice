//func call - Omitting Argument Labels
func testFunction(_ name:String) -> String{
	print("\(name), hello" )
	return "^^"
}

var returnValue:String = testFunction("jinseong")
print(returnValue)