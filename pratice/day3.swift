enum School{
	case elementary, middle, high
}

//상수
let yourSchool = School.high
print("yourSchool \(yourSchool)")


enum Grade : Int{
	case first = 1
	case second = 2
}

let yourGrade = Grade.second.rawValue
print("yourGrade \(yourGrade)")


enum SchoolDetail{
	case elementary(name: String)
	case middle(name: String)
	case high(name: String)
	
	func getName() -> String {
		switch self{
			case .elementary(let name):
				return name
			case let .middle(name):
				return name
			case let .high(name):
				return name
		}
	}
}

let yourHighSchoolName = SchoolDetail.high(name:"흥진고등학교")
print("yourHighSchoolName: \(yourHighSchoolName.getName())")