/*:
 
 ## Completion Handlers in Swift with Bob
 Full tutotiral originally published on [Medium] by Bob Lee
 - Last Update on March 4th, 2017
 - Swift 3 & iOS 10
 
 [Medium]: https://medium.com/ios-geek-community/intro-to-swift-functional-programming-with-bob-9c503ca14f13#.x47hcc2mn
 */


//: Completion Handler Block in Presenting View Controllers
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


//: ## Create Own Completion Handlers
//: > It's all about doing *stuff* after things are over


//: Design Stuff Block
let myHanlderBlock: (Bool) -> Void = { doneWork in
  if doneWork {
    print("We've finished working, bruh")
  }
}

myHanlderBlock(true)

//: Shorter Stuff Block
let handlerBlock: (Bool) -> Void = {
  if $0 {
    print("We've finished working, bruh")
  }
}



//: Design Completion Handlers
func workHard(enterDoStuff: (Bool) -> Void) {
  
  for _ in 1...100 {
    print("👷🏻‍♀️👷🏻👷🏽👷🏽‍♀️👷🏿‍♀️👷🏿")
  }
  
  enterDoStuff(true)
  
}



//: ## Call the function
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






//: ## Pass Data to Completion Handlers

//: Design Stuff Block
let handler: ([String]) -> Void = { (array) in print("Done working \(array)") }

//: Design Function Block
func workSuperHard(doneStuffBlock: ([String]) -> Void) {
  for _ in 1...100 {
    print("But you gotta put in work, work, work")
  }
  
  doneStuffBlock(["Blog","Course", "Editing", "Helping"])
}


//: Call Function
workSuperHard(doneStuffBlock: handler)

//: Pass Closure Directly
workSuperHard { (workList) in
  // workList is now ["Blog", "Course", ...]
  print("I've done \(workList[0])")
}

//: Shorter Version
workSuperHard { print("Don't fire me. I did \($0[0])") }
// $0 is now ["Blog", "Course", ...]


//: Practical Examples how you pass response/json through completion handlers
/* 
 
 Alamofire.request("").responseJSON { response i
 print(response.result)   // result of response serialization
 
  if let JSON = response.result.value {
   print("JSON: \(JSON)")
  }
 }
 
*/



//: **Last Message:** If you are confused by this tutorial, I really need you to keep studying over and over until your eyes become familar with the closure snytax. Again, you have resources available on the bottom. Good luck!


/*:
 > Follow me on [Instagram](https://instagram.com/bobthedev) and [Facebook Page](https://facebook.com/bobthedeveloper) for personal journey and regular updates! All of my free resources available [here](https://bobleesj.gitbooks.io/bob-s-learning-journey/content/WORK.html)
 */

