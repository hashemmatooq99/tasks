class Task{  final String name;  late final isDone ;  Task({required this.name,this.isDone = false});  void doneChange ()  {    isDone = !isDone;  }}