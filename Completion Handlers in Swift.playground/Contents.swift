/*:
 
 ## Completion Handlers in Swift with Bob
 Full tutotiral originally published on [Medium] by Bob Lee
 - Last Update on March 5th, 2017
 - Swift 3 & iOS 10
 
 [Medium]: https://medium.com/ios-geek-community/intro-to-swift-functional-programming-with-bob-9c503ca14f13#.x47hcc2mn
 */



//: Completion Handler Block in Present
import UIKit

let firstVC = UIViewController()
let nextVC = UIViewController()


firstVC.present(nextVC, animated: true, completion: { () in
  print("Done🔨")
})

firstVC.present(nextVC, animated: true, completion: {
  print("Done🔨")
})

firstVC.present(nextVC, animated: true) { print("Done🔨") }



//: Design Completion Handlers
func workHard(enterDoStuff: (Bool) -> Void) {
  
  for _ in 1...100 {
    print("👷🏻‍♀️👷🏻👷🏽👷🏽‍♀️👷🏿‍♀️👷🏿")
  }
  
  enterDoStuff(true)
  
}


// 👷🏽👷🏽‍♀️🔨
let myHanlderBlock: (Bool) -> Void = { doneWork in
  if doneWork {
    print("We've finished working, bruh")
  }
}

myHanlderBlock(true)


let handlerBlock: (Bool) -> Void = {
  if $0 {
    print("We've finished working, bruh")
  }
}

//: Call the functino
workHard(enterDoStuff: handlerBlock)

//: Shorter Version 
workHard { (doneWwork) in
  if doneWwork {
    "We've finished working, bruh"
  }
}

//: Shortest Version 
workHard {
  if $0 {
    "We've finished working, bruh"
  }
}


// Pass Data to Completion Handlers 


//: Design Function Block
func workSuperHard(doStuffBlock: ([String]) -> Void) {
  for _ in 1...100 {
    print("But you gotta put in work, work, work")
  }
  
  doStuffBlock(["Blog","Course", "Editing", "Helping"])
}


//: Design Stuff Block
let handler: ([String]) -> Void = { (array) in print("Done working") }


//: Call Function
workSuperHard(doStuffBlock: handler)
workSuperHard { (workList) in
  // workList is now ["Blog", "Course", ...]
  print("I love writing \(workList[0])")
}



//: 
/* 
 
 Alamofire.request("").responseJSON { response i
 print(response.result)   // result of response serialization
 
 if let JSON = response.result.value {
 print("JSON: \(JSON)")
 }
 }
 
*/




/*:
 > Follow me on [Instagram](https://instagram.com/bobthedev) and [Facebook Page](https://facebook.com/bobthedeveloper) for personal journey and regular updates! All of my free resources available [here](https://bobleesj.gitbooks.io/bob-s-learning-journey/content/WORK.html)
 */

