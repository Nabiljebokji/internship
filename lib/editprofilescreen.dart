import 'package:alo_teslim/HomeScreen.dart';
import 'package:alo_teslim/NewOrder.dart';
import 'package:alo_teslim/httpResponse.dart';
import 'package:alo_teslim/newOrderModel.dart';
import 'package:alo_teslim/profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'NotificationScreen.dart';

class editprofilescreen extends StatefulWidget {
  const editprofilescreen({Key? key}) : super(key: key);

  @override
  _editprofilescreenState createState() => _editprofilescreenState();
}

class _editprofilescreenState extends State<editprofilescreen> {
  // var isinit = true;
  // @override
  // void initState() {
  //   // Future.delayed(Duration.zero).then((_) {
  //   //   Provider.of<httpResponse>(context).getUser();
  //   // });
  //   super.initState();
  // }

  // @override
  // void didChangeDependencies() {
  //   if (isinit) {
  //     Provider.of<httpResponse>(context).getUser();
  //   }
  //   isinit = false;
  //   super.didChangeDependencies();
  // }
  httpResponse H = httpResponse();

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
    // final ProfileId = Provider.of<httpResponse>(context, listen: false);
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
                    GestureDetector(
                      onTap: () {
                        TextField(
                          controller: Name,
                          decoration: new InputDecoration(
                            hintText: "Name",
                            fillColor: Colors.white,
                            filled: true,
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      },
                      child: Card(
                        margin: EdgeInsets.fromLTRB(25, 10, 25, 0),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          height: 100,
                          width: 400,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name :',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                TextField(
                                  controller: Name,
                                  decoration: new InputDecoration(
                                    hintText: "Name",
                                    fillColor: Colors.white,
                                    filled: true,
                                    enabledBorder: const OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      borderSide: const BorderSide(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
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
                        height: 100,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Address :',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              TextField(
                                controller: Address,
                                decoration: new InputDecoration(
                                  hintText: "Address",
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
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
                        height: 100,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Phone :',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              TextField(
                                controller: Phone,
                                decoration: new InputDecoration(
                                  hintText: "Phone",
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
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
                        height: 100,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Telephone :',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              TextField(
                                controller: telephone,
                                decoration: new InputDecoration(
                                  hintText: "Telephone",
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
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
                        height: 100,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'IBAN No :',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              TextField(
                                controller: IbanNo,
                                decoration: new InputDecoration(
                                  hintText: "IBAN No",
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
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
                        height: 100,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'IBAN Name :',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              TextField(
                                controller: IbanName,
                                decoration: new InputDecoration(
                                  hintText: "IBAN Name",
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
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
                        height: 100,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Manager Name :',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              TextField(
                                controller: ManagerName,
                                decoration: new InputDecoration(
                                  hintText: "Manager Name",
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
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
                        height: 100,
                        width: 400,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Manager Phone :',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              TextField(
                                controller: ManagerPhone,
                                decoration: new InputDecoration(
                                  hintText: "Manager Phone",
                                  fillColor: Colors.white,
                                  filled: true,
                                  enabledBorder: const OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    borderSide: const BorderSide(
                                      color: Colors.white,
                                    ),
                                  ),
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
                            // u.updateProfile(
                            //     Name.text,
                            //     Profile(
                            //       Name: Name.text,
                            //       Address: Address.text,
                            //       Phone: Phone.text,
                            //       telephone: telephone.text,
                            //       IbanNo: IbanNo.text,
                            //       IbanName: IbanName.text,
                            //       ManagerName: ManagerName.text,
                            //       ManagerPhone: ManagerPhone.text,
                            //     ));

                            // if (ProfileId.Profileid == null) {
                            //   ProfileId.Profileid = '0';
                            // }
                            u.addprofile(Profile(
                              // id: ProfileId.Profileid,
                              Name: Name.text,
                              Address: Address.text,
                              Phone: Phone.text,
                              telephone: telephone.text,
                              IbanNo: IbanNo.text,
                              IbanName: IbanName.text,
                              ManagerName: ManagerName.text,
                              ManagerPhone: ManagerPhone.text,
                            ));
                            u.getprofile();
                            print('this is and:::::::::::::::');

                            u.getprofile();

                            // u.addprofile(profileList[0]);
                            Navigator.pop(context);
                          });
                        },
                        child: Text(
                          'Save',
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
                      onTap: () {},
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
