// String? validatePassword(String value) {
//   RegExp regex =
//   RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
//   if (value.isEmpty) {
//     return 'Please enter password';
//   } else {
//     if (!regex.hasMatch(value)) {
//       return 'Enter valid password';
//     } else {
//       return null;
//     }
//   }
// }
// validator: (value) {
// // add your custom validation here.
// if (value.isEmpty) {
// return 'Please enter some text';
// }
// if (value.length < 3) {
// return 'Must be more than 2 charater';
// }
// },
// ),
password(String password){
  if(password.length>=6){
    print('accepted');
    return true;

  }
  else{
    print('re-enter your password');
  }
}
class validation{
  int size =6;
  void password(String password){
    for(int x=0;x>=size;x++){

    }
  }
}

language(String language, {String val = "Beginner"})
{
  if (language==true){
    return(val);
  }
}




































