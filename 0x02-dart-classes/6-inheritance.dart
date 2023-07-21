import '6-password.dart';

class User extends Password {

  int id;
  String name;
  int age;
  double height;
  String user_password = '';

  User({required this.id, required this.name, required this.age, required this.height, required this.user_password})
      : super(password: user_password);

  static User fromJson(Map<dynamic, dynamic> userJson) => User(
      id: userJson['id'],
      name: userJson['name'],
      age: userJson['age'],
      height: userJson['height'],
      user_password: '');

  Map toJson() => {
        'id': id,
        'name': name,
        'age': age,
        'height': height,
      };

  String toString() {
    final pwd = Password(password: this.user_password);

    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${pwd.isValid()})';
  }
}