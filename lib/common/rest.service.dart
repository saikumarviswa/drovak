

import 'package:fluttertraffic/common/request.body.dart';
import 'package:fluttertraffic/models/RegistrationDTO.dart';
import 'package:fluttertraffic/models/RegistrationModel.dart';
import 'package:fluttertraffic/models/UserDTO.dart';

import 'database.service.dart';
import 'http.service.dart';

class RestService{
  HttpService httpService = new HttpService();
  DatabaseService dbSvc = DatabaseService();

  Future<UserDTO> getUser(String userName, String password) async {
    RequestBody reqBody = new RequestBody();
    reqBody.url = "auth/user/get/PcAdmin/Admin123";
    reqBody.type = "POST";
    Map<String, dynamic> loginData = {
      'MobileNo': userName,
      'Password': password
    };
    reqBody.reqData = loginData;
    final response = await httpService.restService(reqBody);
    return new UserDTO.fromJson(response.data["ResultData"]);
  }

  Future<RegistrationDTO> registerUser(RegistrationModel registrationModel) async {

    RequestBody reqBody = new RequestBody();
    reqBody.url = "reg/save/user";
    reqBody.type = 'POST';
    reqBody.reqData = registrationModel.toJson();
    final response = await httpService.restService(reqBody);
    return RegistrationDTO.fromJson(response.data['ResultData']);

  }

}