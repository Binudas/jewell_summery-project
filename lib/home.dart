import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jewell_summery/delivered.dart';
import 'package:jewell_summery/login.dart';
import 'package:jewell_summery/neworder.dart';
import 'package:jewell_summery/news.dart';
import 'package:jewell_summery/orderstatus.dart';
import 'package:jewell_summery/declained.dart';
import 'package:jewell_summery/profile.dart';
import 'package:jewell_summery/settings.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: getAppBar(),
          body: getbody(),
          bottomNavigationBar: getBottomnavigator()),
    );
  }

PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: Colors.amber[400],
      automaticallyImplyLeading: true,
      elevation: 0,
      //leadingWidth: 70,
      title: Text(
        'Jewell Summery',
        style: TextStyle(),
      ),
      leading: IconButton(
        icon: Icon(Icons.account_circle_rounded,size: 40,),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Profile()));
        },
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => Settings()));
              },
              icon: Icon(
                Icons.settings,
                size: 35,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogIn()));
              },
              icon: Icon(
                Icons.logout,
                size: 35,
              )),
        )

      ],
    );
  }
Widget getbody() {
    return Container(
      width: MediaQuery.of(context).size.width,
      //height: MediaQuery.of(context).size.height,
      child: ListView(
        padding: EdgeInsets.fromLTRB(2, 20, 2, 0),
        children: [
          Padding(
            padding: EdgeInsets.zero,
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              child: getTwoButton(),
            ),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(23, 25, 20, 2),
              child: Column(
                children: [
                  getTableHeading(),
                  getTableStatusHome(),
                ],
              ))
        ],
      ),
    );
  }
Widget getTwoButton(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NewOrder()));
              },
              padding: EdgeInsets.all(13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.amber[400],
                    size: 40,
                  ),
                  Text(
                    'Create Order',
                    style: TextStyle(
                        color: Colors.amber[400], fontSize: 20),
                  )
                ],
              )),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.amber),
              borderRadius: BorderRadius.circular(25),
              color: Colors.white),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.amber),
              borderRadius: BorderRadius.circular(25),
              color: Colors.white),
          child: FlatButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderStatus()));
              },
              padding: EdgeInsets.all(13),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.assignment_rounded,
                    color: Colors.amber[400],
                    size: 40,
                  ),
                  Text(
                    'Order Status',
                    style: TextStyle(
                        color: Colors.amber[400], fontSize: 20),
                  )
                ],
              )),
        ),
      ],
    );
  }
Widget getTableHeading(){
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Recent Orders',
            style: TextStyle(fontSize: 20),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => OrderStatus()));
              },
              child: Text(
                'View all',
                style: TextStyle(fontSize: 15),
              ))
        ]);
  }
Widget getTableStatusHome(){
    return Padding(
      padding: EdgeInsets.all(0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Table(
          textDirection: TextDirection.ltr,
          border:
          TableBorder.all(color: Colors.white60, width: 2.5),
          columnWidths: {
            0: FlexColumnWidth(2),
            1: FlexColumnWidth(4),
            2: FlexColumnWidth(2)
          },
          children: [
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/1.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-101',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 01/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Declained',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/2.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-102',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 02/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'New Order',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/3.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-103',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 03/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Processing',
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/4.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-104',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 04/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Finished',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/5.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-105',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 05/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Declained',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/6.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-106',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 06/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Delivered',
                          style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/7.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-107',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 07/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Prcessing',
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/8.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-108',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 08/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Declained',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/9.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-109',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 09/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Finished',
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/10.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-110',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 10/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Processing',
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/11.jpg'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-111',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 11/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'New Order',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child:ClipOval(
                      child: Image.asset('asset/image/12.jfif'),
                    ),
                    // backgroundImage:
                    // AssetImage('asset/image/BG/BG1.jpg'),
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Order NO : JS-112',
                        style: TextStyle(
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        'Due Date : 12/01/2022',
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Processing',
                          style: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
}
Widget getBottomnavigator() {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          border: Border(top: BorderSide(width: 2, color: Colors.black12))),
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.amber[400],
                      size: 30,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(color: Colors.amber[400]),
                    )
                  ],
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OrderStatus()));
                },
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.assignment_rounded,
                      size: 30,
                      color: Colors.amber[400],
                    ),
                    Text(
                      'Orders',
                      style: TextStyle(color: Colors.amber[400]),
                    )
                  ],
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Delivered()));
                },
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.assignment_turned_in,
                      color: Colors.amber[400],
                      size: 30,
                    ),
                    Text(
                      'Delivered',
                      style: TextStyle(color: Colors.amber[400]),
                    )
                  ],
                )),
            FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Declained()));
                },
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      //Icons.clear,
                      Icons.clear,
                      size: 30,
                      color: Colors.amber[400],
                    ),
                    Text(
                      'Declained',
                      style: TextStyle(color: Colors.amber[400]),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
