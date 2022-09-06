var dic = ["bestFriend" : "정진성"
			,"highSchool" : "흥진"]

let myBestFriend = dic["bestFriend"]
print(myBestFriend!)

let myHighSchool = dic["highSchool"]
print(myHighSchool!)

let youtubeFriend = dic["youtube", default : "친구없음"]
print(youtubeFriend)

dic["bestFriend"] = "랜덤"
let myBf = dic["bestFriend"]
print(myBf!)

dic["newFriend"] = "새친구"
let newFriend = dic["newFriend"]
print(newFriend!)

dic.updateValue("???", forKey: "girlFriend")
let girlFriend = dic["girlFriend"]
print(girlFriend!)

dic.updateValue("친구바꿈", forKey: "myBestFriend")
let myBf2 = dic["myBestFriend"]
print(myBf2!)

//let emptyDic : [String : Int] = [:]
let emptyDic = [String : Int]()
let myEmptyDic : [String : Int] = Dictionary<String, Int>()

print(dic)

for item in dic{
	print("item : ", item)
}