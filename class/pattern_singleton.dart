class MeService {

  String url    = 'https://miservicio.com';
  String keyApi = 'ABCD1234';

  static final MeService _singleton = new MeService._();

  factory MeService(){
    return _singleton;
  }
  MeService._(); //Internal
}

void main(List<String> args) {
  final demoServiceOne = new MeService();
  demoServiceOne.url   = 'https://api.miservicio.com/';

  final demoServiceTwo = new MeService();
  demoServiceTwo.url   = 'https://api.miservicio.com/v2';
  print(demoServiceOne == demoServiceTwo);

  print(demoServiceOne);
  print(demoServiceTwo);
}