void main() {
  getUser('100', (Map person){
    print(person);
  });
}

void getUser(String id, Function callbak) {
  Map user = {
    'id' : id,
    'name' : 'Name Peron'
  };
  callbak(user);
}