import 'dart:ui';

import 'package:flutter/material.dart';

class CancelDeliveryScreen extends StatefulWidget {
  const CancelDeliveryScreen({Key? key}) : super(key: key);

  @override
  _CancelDeliveryScreenState createState() => _CancelDeliveryScreenState();
}

class _CancelDeliveryScreenState extends State<CancelDeliveryScreen> {
  @override
  Widget build(BuildContext context) {
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
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Color(int.parse("0xff111224")),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 25.0, top: 50.0, right: 25.0, bottom: 20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.notification_add_outlined,
                                      size: 30,
                                      color: Colors.white,
                                    )),
                                Container(
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
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 120, 30, 0),
                      child: Center(
                        child: TextField(
                          decoration: new InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            hintText: "Search Customer",
                            suffixIcon: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 255, 92, 0),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  size: 30,
                                  color: Colors.white,
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
                    ),
                  ],
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                            height: 40,
                            width: 40,
                            child: Image.asset(
                              'lib/assets/user.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Customer Phone',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '+90 512 345 67 89',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(35, 10, 20, 0),
                            height: 30,
                            width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.green[50],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.event_available_rounded,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Delivered',
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 12,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 10, 5, 25),
                              child: Icon(
                                Icons.text_snippet_rounded,
                                color: Colors.grey[400],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order NO',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  'A100020140',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            VerticalDivider(
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 10, 5, 25),
                              child: Icon(
                                Icons.access_time_filled,
                                color: Colors.grey[400],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Time',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '9:25',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            VerticalDivider(
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 5, 25),
                              child: Icon(
                                Icons.person,
                                color: Colors.grey[400],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Driver NO',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '2070',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                            height: 40,
                            width: 40,
                            child: Image.asset(
                              'lib/assets/user.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Customer Phone',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '+90 512 345 67 89',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(35, 10, 20, 0),
                            height: 30,
                            width: 95,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.orange[50]),
                            child: Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.access_time_filled,
                                    color: Color.fromARGB(255, 255, 92, 0),
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Waiting',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 92, 0),
                                    fontSize: 12,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 10, 5, 25),
                              child: Icon(
                                Icons.text_snippet_rounded,
                                color: Colors.grey[400],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order NO',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  'A100020140',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            VerticalDivider(
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 10, 5, 25),
                              child: Icon(
                                Icons.access_time_filled,
                                color: Colors.grey[400],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Time',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '9:25',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            VerticalDivider(
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 5, 25),
                              child: Icon(
                                Icons.person,
                                color: Colors.grey[400],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Driver NO',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '2070',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 1),
                      Container(
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'Change Request',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 92, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.fromLTRB(20, 20, 10, 10),
                            height: 40,
                            width: 40,
                            child: Image.asset(
                              'lib/assets/user.png',
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Customer Phone',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '+90 512 345 67 89',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(35, 10, 20, 0),
                            height: 30,
                            width: 95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.indigo[200],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 25,
                                  width: 25,
                                  margin: EdgeInsets.fromLTRB(2, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                  ),
                                  child: Icon(
                                    Icons.two_wheeler_rounded,
                                    color: Colors.indigo[400],
                                    size: 20,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Going',
                                  style: TextStyle(
                                    color: Colors.indigo[400],
                                    fontSize: 12,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 1),
                      IntrinsicHeight(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(20, 10, 5, 25),
                              child: Icon(
                                Icons.text_snippet_rounded,
                                color: Colors.grey[400],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Order NO',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  'A100020140',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            VerticalDivider(
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5, 10, 5, 25),
                              child: Icon(
                                Icons.access_time_filled,
                                color: Colors.grey[400],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Time',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '9:25',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 10),
                            VerticalDivider(
                              thickness: 1,
                              indent: 10,
                              endIndent: 10,
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 5, 25),
                              child: Icon(
                                Icons.person,
                                color: Colors.grey[400],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Driver NO',
                                  style: TextStyle(
                                    fontSize: 11,
                                    color: Colors.grey,
                                  ),
                                ),
                                Text(
                                  '2070',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Divider(thickness: 1),
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Cancel Delivery',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 92, 0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0.0,
            left: 0.0,
            bottom: 0.0,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 2.0,
                sigmaY: 2.0,
                tileMode: TileMode.mirror,
              ),
              child: Container(
                height: 290,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18.0),
                    topRight: Radius.circular(18.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 0.5,
                      blurRadius: 10,
                      offset: Offset(0.5, 0.5),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 24.0, vertical: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 15),
                      Icon(
                        Icons.warning_amber_outlined,
                        size: 70,
                        color: Color.fromARGB(255, 255, 92, 0),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Cancel Delivery',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Lorem ipsum is simply dummy text of the',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'printing and typesetting industry',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 45),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 150,
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                decoration: BoxDecoration(
                                  color: Colors.deepOrange[100],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                      // fontSize: 13,
                                      color: Color.fromARGB(255, 255, 92, 0),
                                      backgroundColor: Colors.deepOrange[100],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 92, 0),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                child: FlatButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Confirm',
                                    style: TextStyle(
                                      // fontSize: 13,
                                      color: Colors.white,
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 92, 0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
