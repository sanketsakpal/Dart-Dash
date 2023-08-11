void main(List<String> args) {
  // list and iterable together

  const name = ["test", "jin", "jane"];

  final upperCaseName = name.map((e) {
    print("map got called ");
    return e.toUpperCase();
  });

  // so data type of name and upperCaseName is different so, if you hover on both we get name data type as List<String> and upperCaseName data type 
  // is Iterable<String> 

  // so the questions is that why both data type is different

  // answer is dart is trying to be smart to do this task 
  // suppose we done heavy task on this list or we can only want two or 3 index of list 
  // so do we need to call every element of map 

  //  in short, if you don't care whether it's actually a Set or Queue or LinkedList 
  // or whether it's unmodifiable or lazy, you can make it an Iterable.


  
}
