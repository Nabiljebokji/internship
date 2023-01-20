import 'package:http/http.dart' as http;
import 'dart:convert';

class User {
  String userName;
  String PassWord;

  // ignore: non_constant_identifier_names
  User({required this.userName, required this.PassWord});
}

List<User> userList = [User(userName: 'nabil', PassWord: 'nabil123')];
