import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('Hãy chọn một hành động:');
    print('1. Thêm công việc mới');
    print('2. Xóa công việc');
    print('3. Xem danh sách công việc');
    print('4. Thoát');

    String input = stdin.readLineSync()!;
    switch (input) {
      case '1':
        addTask(tasks);
        break;
      case '2':
        deleteTask(tasks);
        break;
      case '3':
        showTasks(tasks);
        break;
      case '4':
        return;
      default:
        print('Hãy chọn một hành động hợp lệ.');
    }
  }
}

void addTask(List<String> tasks) {
  print('Hãy nhập công việc mới:');
  String task = stdin.readLineSync()!;
  tasks.add(task);
  print('Công việc đã được thêm.');
}

void deleteTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print('Không có công việc để xóa.');
    return;
  }

  print('Hãy chọn một công việc để xóa:');
  for (int i = 0; i < tasks.length; i++) {
    print('${i + 1}. ${tasks[i]}');
  }

  String input = stdin.readLineSync()!;
  int index = int.parse(input) - 1;

  if (index < 0 || index >= tasks.length) {
    print('Hãy chọn một công việc hợp lệ.');
    return;
  }

  tasks.removeAt(index);
  print('Công việc đã được xóa.');
}

void showTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print('Không có công việc.');
    return;
  }

  print('Danh sách công việc:');
  for (int i = 0; i < tasks.length; i++) {
    print('${i + 1}. ${tasks[i]}');
  }
}
