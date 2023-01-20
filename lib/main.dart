import 'package:alo_teslim/HomeScreen.dart';
import 'package:alo_teslim/ProfileScreen.dart';
import 'package:alo_teslim/httpResponse.dart';
import 'package:alo_teslim/profile.dart';
import 'package:alo_teslim/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => httpResponse()),
      ],
      builder: (context, child) {
        return MaterialApp(
          home: LoginScreen(),
          debugShowCheckedModeBanner: false,
        );
      }));
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String value;
  // late User user;
  // late Profile profile;

  // @override
  // void initState() {
  //   Future.delayed(Duration.zero).then((_) {
  //     Provider.of<httpResponse>(context, listen: false).getUser();
  //   });
  //   super.initState();
  // }

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  httpResponse u = httpResponse();
  var _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(height: 100),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'lib/assets/images.png',
                        width: 40,
                        height: 40,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sign in to account continue.',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      width: 350,
                      height: 20,
                      child: Row(
                        children: [
                          Image.asset(
                            'lib/assets/long.png',
                          ),
                          SizedBox(width: 5),
                          Image.asset(
                            'lib/assets/small.png',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: TextField(
                        controller: username,
                        decoration: new InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Vendor Username",
                          suffixIcon: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[100],
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.mail_outline,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: TextField(
                        controller: password,
                        decoration: new InputDecoration(
                          hintText: "Password",
                          fillColor: Colors.white,
                          filled: true,
                          suffixIcon: Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Colors.grey[100],
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.lock_outlined,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: const BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      padding: EdgeInsets.fromLTRB(142, 20, 142, 20),
                      onPressed: () {
                        print("${username.text}");
                        if (username.text == userList[0].userName &&
                            password.text == userList[0].PassWord) {
                          setState(() {
                            _isLoading = true;
                            u.getUser();
                            u.adduser(userList[0]).then((_) {
                              setState(() {
                                _isLoading = false;
                              });
                            });
                          });
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => homeScreen(),
                          ));
                        } else {
                          showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                    title: Text(
                                        'Incorrect Username or PassWord!!'),
                                    actions: <Widget>[
                                      FlatButton(
                                        child: Text('Okay'),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ));
                        }
                      },
                      color: Color.fromARGB(255, 255, 92, 0),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),

                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                  'lib/assets/a.png',
                                ),
                                FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Forgot your password?',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  padding: EdgeInsets.fromLTRB(120, 120, 0, 0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
