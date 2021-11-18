import 'package:flutter/material.dart';
import 'package:jewell_summery/declained.dart';
import 'package:jewell_summery/delivered.dart';
import 'package:jewell_summery/orderstatus.dart';
import 'package:jewell_summery/home.dart';
class News extends StatefulWidget {

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_sharp),
          ),
          backgroundColor: Colors.amber[400],
          title: Text('News'),
        ),
        body: Container(
            child:Center(
              child: Text('News'),
            )
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
}
