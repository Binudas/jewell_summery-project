import 'package:flutter/material.dart';
import 'package:jewell_summery/delivered.dart';
import 'package:jewell_summery/news.dart';
import 'package:jewell_summery/orderstatus.dart';
import 'package:jewell_summery/home.dart';
class Declained extends StatefulWidget {

  @override
  _DeclainedState createState() => _DeclainedState();
}

class _DeclainedState extends State<Declained> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 35,
            ),
          ),
          title: Text('Declained'),
          backgroundColor: Colors.amber[400],
        ),
        body: Container(
          padding: EdgeInsets.all(5),
          child: getdeclainedtable(),
        ),
        bottomNavigationBar: getBottomnavigator(),
      ),
    );
  }

  Widget getdeclainedtable(){
    return Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
            children:[Container(
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
                            child: Image.asset('asset/image/BG/BG7.jpg'),
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
                              'Order NO : JS-043',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 12/12/2021',
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
                            child: Image.asset('asset/image/BR/BR7.jpg'),
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
                              'Order NO : JS-044',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 13/12/2021',
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
                            child: Image.asset('asset/image/ER/ER7.jpg'),
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
                              'Order NO : JS-045',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 14/12/2021',
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
                            child: Image.asset('asset/image/NK/NK7.jpg'),
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
                              'Order NO : JS-046',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 15/12/2021',
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
                            child: Image.asset('asset/image/NP/NP7.jpg'),
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
                              'Order NO : JS-047',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 16/12/2021',
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
                            child: Image.asset('asset/image/PD/PD7.jpg'),
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
                              'Order NO : JS-048',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 17/12/2021',
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
                            child: Image.asset('asset/image/RN/RN7.jpg'),
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
                              'Order NO : JS-049',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 18/12/2021',
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
                            child: Image.asset('asset/image/BG/BG8.jpg'),
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
                              'Order NO : JS-050',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 19/12/2021',
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
                            child: Image.asset('asset/image/BR/BR8.jpg'),
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
                              'Order NO : JS-051',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 20/12/2021',
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
                            child: Image.asset('asset/image/ER/ER8.jpg'),
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
                              'Order NO : JS-052',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 21/12/2021',
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
                            child: Image.asset('asset/image/NK/NK8.jpg'),
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
                              'Order NO : JS-053',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 22/12/2021',
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
                            child: Image.asset('asset/image/NP/NP8.jpg'),
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
                              'Order NO : JS-053',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 22/12/2021',
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
                            child: Image.asset('asset/image/PD/PD8.jpg'),
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
                              'Order NO : JS-055',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 14/12/2021',
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
                            child: Image.asset('asset/image/RN/RN8.jpg'),
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
                              'Order NO : JS-056',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Due Date : 15/12/2021',
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


                ],
              ),
            ),])
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
