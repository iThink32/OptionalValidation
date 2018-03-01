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


