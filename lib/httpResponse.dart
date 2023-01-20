import 'package:alo_teslim/newOrderModel.dart';
import 'package:alo_teslim/profile.dart';
import 'package:flutter/material.dart';
import 'package:alo_teslim/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class httpResponse extends ChangeNotifier {
  List<User> user = [];
  List<Profile> profile = [];
  List<Order> order = [];
  // late String userid;
  // late String Profileid;

  // Future<void> updateprofil(String id, Profile newProfile) async {
  //   final profileIndex = profile.indexWhere((Profile) => Profileid == id);
  // }

  Future<void> adduser(User user) async {
    print(user.userName + " " + user.PassWord);
    final url =
        Uri.parse('https://alotslim-default-rtdb.firebaseio.com/user.json');
    try {
      final response = await http.post(
        url,
        body: json.encode({
          'usrename': user.userName,
          'password': user.PassWord,
        }),
      );
      print(json.decode(response.body));
      final newuser = User(userName: user.userName, PassWord: user.PassWord);
      this.user.add(newuser);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<void> getUser() async {
    final url =
        Uri.parse('https://alotslim-default-rtdb.firebaseio.com/user.json');
    try {
      final response = await http.get(url);
      //  print(json.decode(response.body));
      // Map<String, dynamic> extractedData =
      //     new Map<String, dynamic>.from(json.decode(response.body));
      final extractedData = json.decode(response.body) as Map<dynamic, dynamic>;
      final List<User> loadeduser = [];
      extractedData.forEach((UserId, UserData) {
        print('this is userID::::::::::' + UserId);
        print('thjis is userDATA::::::::::: ' + UserData);
        loadeduser.add(User(
          userName: UserData['usrename'],
          PassWord: UserData['password'],
        ));
        // userid = UserId;
      });
      user = loadeduser;
      //**
      // for(i = 0 ; i < user.lenght; i++){
      //  user
      // }
      // */
      notifyListeners();
    } catch (error) {
      // print("this is thee use map ::::: $userList");
      throw (error);
    }
  }

  Future<void> updateProfile(String id, Profile newProfile) async {
    final profileIndex = profile.indexWhere((Profile) => Profile.Name == id);
    final url = Uri.parse(
        'https://alotslim-default-rtdb.firebaseio.com/user/newprofile.json');
    http.patch(url,
        body: json.encode({
          // 'id': '${newProfile.id}',
          'Name': '${newProfile.Name}',
          'Address': '${newProfile.Address}',
          'Phone': '${newProfile.Phone}',
          'telephone': '${newProfile.telephone}',
          'IbanNo': '${newProfile.IbanNo}',
          'IbanName': '${newProfile.IbanName}',
          'ManagerName': '${newProfile.ManagerName}',
          'ManagerPhone': '${newProfile.ManagerPhone}',
        }));
    profile[0] = newProfile;
    print('this is the new update:::::$newProfile');
    notifyListeners();
  }

  Future<void> addOrder(Order order) async {
    print(order.Phone.toString() + " " + order.Time.toString());
    final url = Uri.parse(
        'https://alotslim-default-rtdb.firebaseio.com/user/order.json');
    try {
      final response = await http.post(
        url,
        body: json.encode({
          'Phone': order.Phone,
          'Time': order.Time,
        }),
      );
      print(json.decode(response.body));
      final newOrder = Order(Phone: order.Phone, Time: order.Time);
      this.order.add(newOrder);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }

  Future<void> getOrder() async {
    final url = Uri.parse(
        'https://alotslim-default-rtdb.firebaseio.com/user/order.json');
    try {
      final response = await http.get(url);
      //  print(json.decode(response.body));
      Map<String, dynamic> extractedData =
          new Map<String, dynamic>.from(json.decode(response.body));
      // final extractedData = json.decode(response.body) as Map<dynamic, dynamic>;
      final List<Order> loadedOrder = [];
      extractedData.forEach((OrderId, OrderData) {
        print('this is OrderID::::::::::' + OrderId);
        print('thjis is OrderDATA::::::::::: ' + OrderData);
        loadedOrder
            .add(Order(Phone: OrderData['Phone'], Time: OrderData['Time']));
      });
      order = loadedOrder;
      notifyListeners();
    } catch (error) {
      throw error;
    }
  }

  Future<void> getprofile() async {
    final url = Uri.parse(
        'https://alotslim-default-rtdb.firebaseio.com/user/profile.json');
    try {
      final response = await http.get(url);
      print(json.decode(response.body));
      // Map<String, dynamic> extractedData =
      //     new Map<String, dynamic>.from(json.decode(response.body));
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      final List<Profile> loadedProfile = [];
      extractedData.forEach((profileId, profileData) {
        print('this id profileID::::::::::::::$profileId');
        print('this is profileDATA::::::::::::$profileData');
        // Profileid = profileId;
        loadedProfile.add(Profile(
          //id: json.decode(response.body),
          // id: profileId,
          Name: profileData['Name'],
          Address: profileData['Address'],
          Phone: profileData['Phone'],
          telephone: profileData['telephone'],
          IbanNo: profileData['IbanNo'],
          IbanName: profileData['IbanName'],
          ManagerName: profileData['ManagerName'],
          ManagerPhone: profileData['ManagerPhone'],
        ));
        // Profileid = profileId;
      });
      profile = loadedProfile;
      notifyListeners();
    } catch (error) {
      print(error);
      throw (error);
    }
  }

  Future<void> addprofile(Profile profile) async {
    print(profile.Name +
        " " +
        profile.Address +
        " " +
        profile.Phone.toString() +
        " " +
        profile.telephone.toString() +
        " " +
        profile.IbanNo.toString() +
        " " +
        profile.IbanName +
        " " +
        profile.ManagerName +
        " " +
        profile.ManagerPhone.toString());
    final url = Uri.parse(
        'https://alotslim-default-rtdb.firebaseio.com/user/profile.json');
    try {
      final response = await http.post(
        url,
        body: json.encode({
          // 'id': '${userid}',

          // 'id': '${profile.id}',
          'Name': '${profile.Name}',
          'Address': '${profile.Address}',
          'Phone': '${profile.Phone}',
          'telephone': '${profile.telephone}',
          'IbanNo': '${profile.IbanNo}',
          'IbanName': '${profile.IbanName}',
          'ManagerName': '${profile.ManagerName}',
          'ManagerPhone': '${profile.ManagerPhone}',
        }),
      );
      print(json.decode(response.body));
      final newprofile = Profile(
        // id: profile.id,
        Name: profile.Name,
        Address: profile.Address,
        Phone: profile.Phone,
        telephone: profile.telephone,
        IbanNo: profile.IbanNo,
        IbanName: profile.IbanName,
        ManagerName: profile.ManagerName,
        ManagerPhone: profile.ManagerPhone,
      );
      this.profile.add(newprofile);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}
