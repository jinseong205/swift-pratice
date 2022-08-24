//Day11 paramter 로서 clouser
import Foundation

//completion 이라는 closuer를 parameter로 가지는 method
func sayHello(completion: () -> Void){
	print("Hello")
	sleep(1)
	//exec completion clouser
	completion()
}

//method 호출부에서 이벤트 종료를 알 수 있다.
/*
sayHello(completion:{
	print("1초가 지났다")
})


sayHello(){
	print("1초가 지났다.")
}
*/

//parameter로서 데이터를 반환하는 clouser
//completion(String) -> Void{} 
//func completion(userInput: String){
//}
  
func sayHiWithName(completion : (String) -> Void){
	print("sayHiWithName() call")
	sleep(1)
	//exec clouser and return data
	completion("반가워요")
}

/*
sayHiWithName(completion : { (comment: String) in
	print("1초가 지났다. ", comment)
})

sayHiWithName(completion : { (comment) in
	print("1초가 지났다. ", comment)
})

sayHiWithName{ comment in
	print("1초가 지났다. ", comment)
			 }
*/

//parameter로서 데이터를 여러개 반환하는 clouser
func sayHiWithFullName(completion : (String, String) -> Void){
	print("sayHiWithName() call")
	sleep(1)
	//exec clouser and return data
	completion("반가워요", "화이팅")
}

/*
sayHiWithFullName{ first, second in 
			 print("^^",first,second)}

sayHiWithFullName{ _, second in 
			 print("^^",second)}

sayHiWithFullName{print("^^",$0,$1)}
*/


func sayHelloOptional(completion: (() -> Void)? = nil ){
	print("sayHelloOptional()")
	sleep(1)
	//exec completion clouser
	completion?()
}


/*
sayHelloOptional()
sayHelloOptional{
	print("hello")
}
*/

//(Int) -> String
func transform(number: Int) -> String{
	return "숫자 : \(number)"
}
print(transform(number:3))


var myNumbers : [Int] = [0,1,2,3,4,5,6]
/*
var transformNumbers = myNumbers.map{ (aNumber:Int) -> String in
	return "숫자 \(aNumber)"
	}
*/
var transformNumbers = myNumbers.map{
	return "숫자 \($0)"
	}
print(transformNumbers)