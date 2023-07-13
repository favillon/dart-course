import 'dart:io';

void main() {
  Future timeout = Future.delayed(Duration(seconds:3 ), (){
    print('3 Seconds');
    return 'Retunr Future';
  });

  timeout.then( (text) => print(text));
  print('End Main');

  readFile();
}

void readFile() {
  File file = new File(Directory.current.path + '/intermediate/assets/person.txt');
  // Async
  Future<String> dataFileReadAsync = file.readAsString();
  dataFileReadAsync.then(print);

  // Sync
  String dataFileRead = file.readAsStringSync();
  print('dataFileRead');
  print(dataFileRead);
}