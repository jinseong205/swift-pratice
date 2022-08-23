
//0...5
//0,1,2,3,4,5

//0..<5
//0,1,2,3,4

print("0...5")
for i in 0...5{
	print(i)	
}


print("0..<5 && i%2 == 0")
for i in 0..<5 where i%2 == 0{
	print(i)	
}

var randomInts : [Int] = []

for _ in 0..<25{
	let randomNumber = Int.random(in : 0...100)
	randomInts.append(randomNumber)
}

print("randomInts \(randomInts)")