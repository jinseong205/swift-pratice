//Day06 Class & struct 

//struct - youtuber model
struct youtuberStruct{
	var name: String
	var subscribersCount : Int
}

var gomawoomi = youtuberStruct(name: "고마우미", subscribersCount: 999999)
print(gomawoomi.name)

gomawoomi.name = "gomawoomi"
print(gomawoomi.name)

//class
class youtuberClass {
	var name: String
	var subscribersCount : Int
	//constructor
	init(name: String, subscribersCount: Int){
		self.name = name
		self.subscribersCount = subscribersCount
	}
}

var miwoomago = youtuberClass(name:"미우마고", subscribersCount: 777777)
print(miwoomago.name)

miwoomago.name = "miwoomago"
print(miwoomago.name)