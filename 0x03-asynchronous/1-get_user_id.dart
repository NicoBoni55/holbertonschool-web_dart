import "1-util.dart";
import 'dart:convert';

Future<String> getUserId() async {
    final userDataJson = await fetchUserData();

    final userData = jsonDecode(userDataJson);
    
    return userData['id'];
}