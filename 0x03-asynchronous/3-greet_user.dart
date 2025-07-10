import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
    try {

    final userDataJson = await fetchUserData();
    final userData = jsonDecode(userDataJson);
    return 'Hello ${userData['username']}';

    } catch (error) {
        return 'error caught: ${error}';
    }
}

Future<String> loginUser() async {

    try {

    bool checkcredential = await checkCredentials();

    print('There is a user: ${checkcredential}');

    if (checkcredential == true) {
        return await greetUser();
    }
    else {
        return 'Wrong credentials';
    }
    } catch (error) {
        return 'error caught: ${error}';
    }
}