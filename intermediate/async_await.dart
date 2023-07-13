import 'dart:io';

void main() async{
  String path = Directory.current.path + '/intermediate/assets/person.txt';
  String text = await readFile(path);
  print(text);
  print('End Main');
}

Future<String>  readFile(String path)  async{
  File file = new File(path);
  return file.readAsString();
}