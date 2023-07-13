import 'dart:async';

void main() {
  final streamController = new StreamController<String>();

  streamController.stream.listen(
    (data) {
      print('Run! $data');
    },
    onDone: () => print('Mision Controlles END'),
    onError: (error)=>print('Error $error'),
    cancelOnError: false //tru para detener la ejecucion
  );

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('No llegamos a la Luna!');
  streamController.sink.add('Apollo 14');

  streamController.sink.close();

  final streamControllerBroadCast = new StreamController<String>.broadcast();

  streamControllerBroadCast.stream.listen(
    (data) {
      print('Run! Stream1 $data');
    },
    onDone: () => print('Mision Controlles END Stream1'),
    onError: (error)=>print('Error  Stream1 $error'),
    cancelOnError: false //tru para detener la ejecucion
  );
  streamControllerBroadCast.stream.listen(
    (data) {
      print('Run! Stream2 $data');
    },
    onDone: () => print('Mision Controlles END Stream2'),
    onError: (error)=>print('Error Stream2 $error'),
    cancelOnError: false //tru para detener la ejecucion
  );

  streamControllerBroadCast.sink.add('Apollo 11');
  streamControllerBroadCast.sink.add('Apollo 12');
  streamControllerBroadCast.sink.add('Apollo 13');
  streamControllerBroadCast.sink.addError('No llegamos a la Luna!');
  streamControllerBroadCast.sink.add('Apollo 14');

  streamControllerBroadCast.sink.close();

  print('End Main');
}