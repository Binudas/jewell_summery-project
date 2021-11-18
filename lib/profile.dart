import 'package:flutter/material.dart';
import 'package:jewell_summery/delivered.dart';
import 'package:jewell_summery/news.dart';
import 'package:jewell_summery/orderstatus.dart';
import 'package:jewell_summery/home.dart';
import 'package:jewell_summery/declained.dart';
class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
final double coverHeight=100;
final double profileHeight=100;

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           actions: [
             IconButton(onPressed: (){}, icon: Icon(Icons.edit,size: 35,))
           ],
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back,color: Colors.white,size: 35,),
          ),
          elevation: 0,
        backgroundColor: Colors.amber[400],
        ),
        body:ListView(
          children: [
            buildTop(),
            SizedBox(height: 60,),
            builContent()
          ],
      ),
        bottomNavigationBar: getBottomnavigator(),

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
  Widget builContent(){
    return Container(
            padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 20),
            child: Text('Personal Info',style: TextStyle(fontSize: 25,color: Colors.grey,fontWeight: FontWeight.bold),),
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 20),
          child:Table(
            border:
            TableBorder.all(color: Colors.white, width: 0),
            columnWidths: {
              0:FlexColumnWidth(2),
              1:FlexColumnWidth(6),
            },
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 20),
                    child: Text('Name',style: TextStyle(fontSize: 15),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 20),
                    child: Text('User Name',style: TextStyle(fontSize: 15),),
                  )
                ]
              ),
              TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      child: Text('GST No',style: TextStyle(fontSize: 15),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      child: Text('55192356546',style: TextStyle(fontSize: 15),),
                    )
                  ]
              ),
              TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      child: Text('Phone',style: TextStyle(fontSize: 15),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      child: Text('+91 8547972785',style: TextStyle(fontSize: 15),),
                    )
                  ]
              ),
              TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      child: Text('E-mail',style: TextStyle(fontSize: 15),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      child: Text('username@gmail.com',style: TextStyle(fontSize: 15),),
                    )
                  ]
              ),
              TableRow(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      child: Text('Address',style: TextStyle(fontSize: 15),),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 10),
                      child: Text('4 the Avenue,Torendo,West Malda'
                          'Canada-85456',style: TextStyle(fontSize: 15),),
                    )
                  ]
              ),
            ],
          )
          ),
        ],
      ),
    );
  }




  Widget buildTop(){
    final  top1=coverHeight-profileHeight/2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        buildCoverImage(),
        Positioned(child: buildProfileImage(),
          top: top1 ,
        )

      ],
    );
  }
  Widget buildProfileImage(){
    return CircleAvatar(
      radius: profileHeight/2,
      backgroundColor: Colors.grey.shade50,
      backgroundImage: AssetImage('asset/image/user.png'),
    );
  }

  Widget buildCoverImage(){
    return Container(
        width: double.infinity,
        height: coverHeight,
      color:Colors.amber[400]
    );
  }
}
