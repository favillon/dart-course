import 'package:http/http.dart' as http;

import 'class/request_response.dart';

String nicknameCreator() {
  return 'Favillon';
}

void resquestService(){
  final url = Uri.parse('https://reqres.in/api/users?page=2');
  //List? dataApi = [];
  http.get(url).then((res) {
    // final body = jsonDecode(res.body);
    // print(body);
    // print(body['page']);
    // dataApi = body['data'];
    // print(dataApi[]);
    final resquestResponse =  requestResponseFromJson(res.body);
    print('Page : ${resquestResponse.page}');
    print('perPage : ${resquestResponse.perPage}');
    print('data : ${resquestResponse.data}');
    print('data id position 3 : ${resquestResponse.data[2].id}');
  });
}