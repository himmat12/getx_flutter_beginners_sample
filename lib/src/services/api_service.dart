import 'package:getx_state_management/src/models/person_model.dart';

class ApiService {
  Person? person;

  void getApiData() {
    person = Person(
      name: 'Hari Bahadur',
      age: '24',
      gender: 'Male',
      address: 'Nepal',
    );
  }
}
