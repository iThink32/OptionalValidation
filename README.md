# OptionalValidation
## A validation func that checks whether any class that has optional instance variables are set or not.Usually used for model objects

Usage :-

Assume you have a class like follows:-

```
class A {
var str1:String?
var str2:Int?
}
```

and now you want to check whether all the variables in this class have been set or not all you have to do is make the 
class conform to OptionalValidation like

```
class A:OptionalValidation
```

and then call it on the object 

```
var obj = A() // for eg
obj.validate()
```
Guys i just entered the Domain of CocoaPods , this project contains my first pod :p 

to integrate this project go to your podfile and type 

```
pod 'OptionalValidation' in your target 
```

and

```
source 'https://github.com/iThink32/PrivatePodsSpecs'
```

above all your targets , since it is my first pod ill include the podfile as well just incase this is your first time too :)

```
source 'https://github.com/iThink32/PrivatePodsSpecs'
target 'TestPod' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!
  pod 'OptionalValidation'
  # Pods for TestPod

  target 'TestPodTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'TestPodUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
```
