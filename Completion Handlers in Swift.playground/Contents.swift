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
func workHard(handlerBlock: (Bool) -> Void) {
  
  for _ in 1...1000 {
    print("👷🏻‍♀️👷🏻👷🏽👷🏽‍♀️👷🏿‍♀️👷🏿")
  }
  
  handlerBlock(true)
  
}



// 👷🏽👷🏽‍♀️🔨

let myHanlderBlock: (Bool) -> Void = { doneWork in
  if doneWork {
    print("We've finished working, bruh")
  }
}


let handlerBlock: (Bool) -> Void = {
  if $0 {
    print("We've finished working, bruh")
  }
}

// workHard(handlerBlock: handlerBlock)




// Pass Data to Completion Handlers 
let handlerReturnValue: (Bool) -> String = {
  
  var name = ""
  if $0 {
    name = "Bob the Developer"
  } else {
    name = "Does not exist"
  }

  return name
}



func runFunction(handlerBlock: ([String]) -> [String]) {
  for _ in 1...10000 {
    print("Hello from the other side")
  }
  
  handlerBlock(["Bob", "Bob Lee", "SangJoon", "Lee"])
}


runFunction(handlerBlock: { isSuccess in
  return isSuccess
})







/*:
 > Follow me on [Instagram](https://instagram.com/bobthedev) and [Facebook Page](https://facebook.com/bobthedeveloper) for personal journey and regular updates! All of my free resources available [here](https://bobleesj.gitbooks.io/bob-s-learning-journey/content/WORK.html)
 */

