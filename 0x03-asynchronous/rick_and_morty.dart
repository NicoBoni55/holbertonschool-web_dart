import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async{
    try {
        String url = 'https://rickandmortyapi.com/api/character';
        final response = await http.get(Uri.parse(url));
        String character = response.body;

        final data = jsonDecode(character);
        final result = data['results'];

        for(var character in result) {
            print(character['name']);
        }
    } catch (error) {
        print('error caught: ${error}');
    }
}