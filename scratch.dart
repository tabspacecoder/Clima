import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async  {
  String Task2Result;
  task1();
  Task2Result=await task2();
  task3(Task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future <String> task2() async {
  Duration threeSec=Duration(seconds: 3);
  String result;
  //sleep(threeSec);
  await Future.delayed(threeSec,(){
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String dataFromTask2) {
  String result = 'task 3 data';
  print('Task 3 complete with $dataFromTask2 ');
}