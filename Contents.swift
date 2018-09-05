//: Playground - noun: a place where people can play

import Cocoa
enum Gender{
    case male
    case female
}
class Person{
    var firstName:String
    var lastName:String
    var age:Int
    var gender:Gender
    var fullName:String{
        get{
            return firstName+lastName
        }
    }
    init(firstName:String,lastName:String,age:Int,gender:Gender){
        self.firstName = firstName;
        self.lastName = lastName;
        self.age = age;
        self.gender = gender;
    }
    var description:String {
        return "Name:\(fullName) Age:\(age) Gender:\(gender)"
    }
    convenience init(name:String){
        self.init(firstName: name
            , lastName: "", age: 18, gender: Gender.female)
    }
}
let p1 = Person(firstName:"li",lastName:"guiyang",age:43,gender:Gender.male)
class Student:Person{
    var grade:Int;
    init(firstName:String,lastName:String,age:Int,gender:Gender,grade:Int) {
        self.grade = grade
        super.init(firstName: firstName, lastName: lastName, age: 18, gender: Gender.female)
    }
    convenience init(name:String){
        self.init(firstName: name,lastName: "", age:18,
                  gender:Gender.female,grade: 60)
    }
    override var  description: String{
        return super.description + " Grade \(grade)"
    }
    
}
let p2 = Student(firstName:"he",lastName:"shuyue",age:17,gender:Gender.female,grade:13)
print(p1.description)
print(p2.description)


