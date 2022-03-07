class User{
    String age;
    String history;
    String first_Name;
    String Last_name;
    String Gender;
    User({required this.age,
        required this.history,
        required this.first_Name,
        required this.Last_name,
        required this.Gender,});


    // factory User.fromJson(Map<String,dynamic> json){
    //     return User(age: age.fromJson(json['age']), history: history, first_Name: first_Name, Last_name: Last_name, Gender: Gender);
    // }

}