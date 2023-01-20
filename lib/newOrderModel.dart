import 'package:alo_teslim/httpResponse.dart';
import 'package:alo_teslim/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Order {
  httpResponse h = httpResponse();

  String Phone;
  dynamic Time;

  Order({
    required this.Phone,
    required this.Time,
  });
}

List<Order> profileList = [
  Order(
    Phone: 'w',
    Time: '0',
  )
];
