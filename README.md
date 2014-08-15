IntroducingFunctions
====================

The fourth project for iOS pre-course using functions

### Resources:
- What is a Class and what is an Instance? Read [this](http://codewithchris.com/how-to-make-iphone-apps-object-oriented-programming-and-classes/). [Please](http://codewithchris.com/how-to-make-iphone-apps-object-oriented-programming-and-classes/). Read [it](http://codewithchris.com/how-to-make-iphone-apps-object-oriented-programming-and-classes/). I know it talks a lot about Objective-C. But mostly it will teach you what you need to know about Object-Oriented Programming.
- Alright, [Methods](https://devmounta.in/files/iOS/ios-precourse__03Methods.pdf) file on DevMounta.in is a quick read, make sure you understand it all.
- For Objective-C read the RyPress section on [Functions](http://rypress.com/tutorials/objective-c/functions.html)
- For Swift [iOS Creator](http://www.ioscreator.com/tutorials/introduction-to-swift-functions) has a very simple intro to Functions and Section 2 of [Part 2] of the Tuts+ tutorial should be very helpful.

### Step 1: Get the project started on your computer and on GitHub
- Either create a project locally and push to GitHub
- Or fork this project and clone it to your computer

*Note:*
- *For more detailed instructions of 'Step 1' see the first [project](https://github.com/DevMountain/AGoodStart.git)*
- *'Step 1' is something we will do hundreds of times in class. You need to be able to do it quickly and without running into issues so it doesn't slow class down.*

### Step 2: Manipulate strings using class and instance methods
- Declare and set a variable called myName to your name
- Declare two more string variables introduction and japaneseIntroduction both with an NSString type
- Set introduction using stringWithFormat (or format: in Swift) class method "My name is %@", myName
- Set japanese introduction using stringByAppendingString instance method by appending " to moushimasu"
- Print introduction and japanese introduction

### Step 3: Define and call a new function
- Declare a function called printIntroductions
- The function should accept an NSString as a parameter called name
- Cut and paste the introduction and japaneseIntroduction code inside of the new function
- You should have errors for referencing 'myName'. Change any reference to 'myName' to 'name'.
  - This is an error of scope. You only declared 'myName' in your didFinishLaunching method. Not in your new method. In your new method, you declared an argument called 'name' that your function accepts when the method is called
- In your didFinishLaunching method after you set myName call printIntroductions: and pass in 'myName' as an argument
- It should print out the introduction and Japanese introduction

### Step 4: Recurse through a function
- Add a new function called countDownTillIntroduction: that accepts an integer called numberOfDays as an argument
- The function should do the following:
  - Check to see if the numberOfDays is 0
    - If the number of days is 0, it should print "The time has come"
  - If numberOfDays is not 0
    - It should print "[numberOfDays] days left until introductions"
    - It should declare and set a variable oneLessDay and set it to numberOfDays - 1
    - It should then call countDownTillIntroduction and pass in oneLessDay
- In the didFinishLaunching method before you call printIntroductions call countDownTillIntroduction and pass in 4

### Completion:
- You should see it print "4 days left until introductions", "3 days left until introductions" (down to 1) and then it should print "The time has come" and "My name is [yourName]", "[yourName] to moushimasu"
