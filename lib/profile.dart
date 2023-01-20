import 'package:alo_teslim/httpResponse.dart';
import 'package:alo_teslim/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Profile {
  httpResponse h = httpResponse();
  // dynamic id;
  String Name;
  String Address;
  dynamic Phone;
  dynamic telephone;
  dynamic IbanNo;
  String IbanName;
  String ManagerName;
  dynamic ManagerPhone;

  Profile({
    // required this.id,
    required this.Name,
    required this.Address,
    required this.Phone,
    required this.telephone,
    required this.IbanNo,
    required this.IbanName,
    required this.ManagerName,
    required this.ManagerPhone,
  });
}

List<Profile> profileList = [
  Profile(
    // id: 'w',
    Name: 'w',
    Address: 'w',
    Phone: 'w',
    telephone: 'w',
    IbanNo: 'w',
    IbanName: 'w',
    ManagerName: 'w',
    ManagerPhone: 'w',
  )
];
