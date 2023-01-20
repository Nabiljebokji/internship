import 'package:alo_teslim/HomeScreen.dart';
import 'package:alo_teslim/NewOrder.dart';
import 'package:alo_teslim/httpResponse.dart';
import 'package:alo_teslim/profile.dart';
import 'package:alo_teslim/editprofilescreen.dart';
import 'package:alo_teslim/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'NotificationScreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var isinit = true;

  // @override
  // void initState() {
  //   Future.delayed(Duration.zero).then((_) {
  //     Provider.of<httpResponse>(context, listen: false).getUser();
  //   });
  //   super.initState();
  // }

  @override
  void didChangeDependencies() {
    if (isinit) {
      Provider.of<httpResponse>(context).getprofile();
    }
    isinit = false;
    super.didChangeDependencies();
  }

  TextEditingController Name = TextEditingController();
  TextEditingController Address = TextEditingController();
  TextEditingController Phone = TextEditingController();
  TextEditingController telephone = TextEditingController();
  TextEditingController IbanNo = TextEditingController();
  TextEditingController IbanName = TextEditingController();
  TextEditingController ManagerName = TextEditingController();
  TextEditingController ManagerPhone = TextEditingController();
  httpResponse u = httpResponse();

  @override
  Widget build(BuildContext context) {
    final profileData = Provider.of<httpResponse>(context, listen: false);
    // final Profiles = u.profile;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        // child:
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 130.0,
                      decoration: BoxDecoration(
                        color: Color(int.parse("0xff111224")),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 25.0,
                          top: 50.0,
                          right: 25.0,
                          bottom: 20.0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) =>
                                            NotificationScreen(),
                                      ));
                                    },
                                    child: Icon(
                                      Icons.notification_add_outlined,
                                      size: 30,
                                      color: Colors.white,
                                    )),
                                Container(
                                  height: 50,
                                  child: Image.asset('lib/assets/logo.png'),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.power_settings_new_rounded,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                      height: 100,
                      width: 100,
                      child: Image.asset(
                        'lib/assets/user.png',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Name:',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              // profileData.profile.isEmpty
                              //     ? Text("Enter Name ")
                              //     :
                              Text(
                                '${userList[0].userName}',
                                //'${profileData.profile[0].Name}',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Address:',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              profileData.profile.isEmpty
                                  ? Text("Enter Address ")
                                  : Text(
                                      '${profileData.profile[0].Address}',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Phone:',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              profileData.profile.isEmpty
                                  ? Text("Enter Phone ")
                                  : Text(
                                      '${profileData.profile[0].Phone}',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Telephone:',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              profileData.profile.isEmpty
                                  ? Text("Enter Telephone ")
                                  : Text(
                                      '${profileData.profile[0].telephone}',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'IBAN No:',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              profileData.profile.isEmpty
                                  ? Text("Enter IBAN NO ")
                                  : Text(
                                      '${profileData.profile[0].IbanNo}',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'IBAN Name:',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              profileData.profile.isEmpty
                                  ? Text("Enter IBAN Name ")
                                  : Text(
                                      '${profileData.profile[0].IbanName}',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Manager Name:',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              profileData.profile.isEmpty
                                  ? Text("Enter Manager Name ")
                                  : Text(
                                      '${profileData.profile[0].ManagerName}',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: 50,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Manager Phone:',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              profileData.profile.isEmpty
                                  ? Text("Enter Manager Phone ")
                                  : Text(
                                      '${profileData.profile[0].ManagerPhone}',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 400,
                      margin: EdgeInsets.fromLTRB(25, 10, 25, 30),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 92, 0),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: FlatButton(
                        onPressed: () {
                          setState(() {
                            u.getprofile();
                          });
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => editprofilescreen(),
                          ));
                        },
                        child: Text(
                          'EDIT',
                          style: TextStyle(
                            // fontSize: 13,
                            color: Colors.white,
                            backgroundColor: Color.fromARGB(255, 255, 92, 0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Stack(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(50, 0, 50, 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => homeScreen(),
                        ));
                      },
                      child: Icon(
                        Icons.home,
                      ),
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person_outline_outlined,
                    ),
                    label: "",
                  ),
                  BottomNavigationBarItem(
                    icon: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ProfileScreen(),
                        ));
                      },
                      child: Icon(
                        Icons.person_outline_outlined,
                      ),
                    ),
                    label: "profile",
                  ),
                ],
                unselectedItemColor: Colors.grey[400],
                selectedItemColor: Color.fromARGB(255, 255, 92, 0),
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: true,
                //onTap: onItemClicked,
                // currentIndex: selectIndex,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(175, 0, 0, 20),
            alignment: Alignment.center,
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 92, 0),
                borderRadius: BorderRadius.circular(30)),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => newOrder(),
                ));
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
