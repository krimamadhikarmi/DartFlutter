import 'package:dart2/service/dio_service.dart';

class SampleRepository{
  void sampleApiCall(){
    final response=dioService.dio.get('https://reqres.in/api/users?page=1');
    print('Response $response');
  }
}