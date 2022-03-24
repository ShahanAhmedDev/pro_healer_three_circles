import 'package:flutter/cupertino.dart';

class AuthService extends ChangeNotifier{

  Future login({required String userName, required String password}) async{
    var body =
    {
      ///Map = ///Key      ///Value
      "username": userName,
      "password": password,
    };
}

}