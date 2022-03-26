import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:pro_healer_three_circles/constants/Api_strings.dart';

class AuthService extends ChangeNotifier{

  Future login({required String userName, required String password}) async{
    var body=
   {"username": userName,
     "password": password
   };
    Dio dio = Dio();
    print(ApiStrings.login);
    print(body);
    Response response = await dio.post(ApiStrings.login,data: body,options: Options(
      headers: {"Content-Type": "application/json",
        "Access-Control-Allow-Credentials": true, // Required for cookies, authorization headers with HTTPS
        "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token",
        "Access-Control-Allow-Methods": "GET, POST, OPTIONS"
        ///https://stackoverflow.com/questions/65630743/how-to-solve-flutter-web-api-cors-error-only-with-dart-code
        ///Follow the above answer to disable the internet security to bypas the CORS problem.
      },
      // validateStatus: (status){
      //   return status!  <= 500;
      // }
    ),
    );
    print(response.data);
    print(response.statusCode);
    // if(response.statusCode == 200){
      return true;
    // }
    // else{
    //   return null;
    // }
    // return true;

}

}