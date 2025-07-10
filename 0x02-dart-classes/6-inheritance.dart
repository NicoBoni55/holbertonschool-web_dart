import './6-password.dart';

class User {
    String? name;
    int? age;
    double? height;
    int? id;
    String? user_password;

    User({this.name, this.age, this.height, this.id, this.user_password});

    Map<dynamic, dynamic> toJson() {
        return {
            'id': id,
            'name' : name,
            'age' : age,
            'height': height,
        };
    }

    static User fromJson(Map<dynamic, dynamic> userJson) {
        return User(
            id: userJson['id'],
            name: userJson['name'],
            age: userJson['age'],
            height: userJson['height'],
            user_password: userJson['user_password']
        );
    }


    String toString() {
        final pwd = Password(password: user_password ?? '');
        return 'User(id : $id ,name: $name, age: $age, height: $height, Password: ${pwd.isValid()})';
    }

}