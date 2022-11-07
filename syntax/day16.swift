
let jobTitle="개발자"
//jobTitle ="호롤롤로" //cannot assign value => 갑승ㄹ 변경 할 수 없다.
print(jobTitle)
 


func sayName(_ name : String){
	//name = "개발자" + name	//cannot assign value => 갑승ㄹ 변경 할 수 없다.
	print("안녕? 난 \(name)이라고 해" )
}
sayName("진성")



func sayJob(_ name : inout String){
	name = "개발자 " + name	//cannot assign value => 갑승ㄹ 변경 할 수 없다.
	print("안녕? 난 \(name)이라고 해")
}

var name = "진성"
sayJob(&name)

