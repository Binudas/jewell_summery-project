import 'package:flutter/material.dart';
import 'package:jewell_summery/declained.dart';
import 'package:jewell_summery/delivered.dart';
import 'package:jewell_summery/home.dart';
import 'package:jewell_summery/orderstatus.dart';
import 'package:fluttertoast/fluttertoast.dart';
class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  TextEditingController _designController=TextEditingController();
  TextEditingController _salesmanController=TextEditingController();
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber[400],
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_sharp),
        ),
        title: Text('Settings'),
        ),
        body: getBody(),
        bottomNavigationBar: getBottomnavigator(),
      ),
    );
  }

  Widget getBody(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text('Add Design Items',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child:TextFormField(
              controller: _designController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),

              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 12, 8, 8),
            child: Text('Add Salesman',style: TextStyle(color: Colors.amber,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8,8,8,8),
            child:TextFormField(
              controller: _salesmanController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(18, 20, 18, 0),
          child: ElevatedButton(
            onPressed: (){
              if(_designController.text.isNotEmpty||_salesmanController.text.isNotEmpty){
                _salesmanController.clear();
                _designController.clear();
                Fluttertoast.showToast(msg: 'Addeded Suess Fully',gravity: ToastGravity.CENTER);
              }else{
                Fluttertoast.showToast(msg: 'Plese Enter Design Item or Salesman',gravity: ToastGravity.CENTER);
              }
            },
            child: Text('Add'),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              primary: Colors.amber[400],

            )
          ),
          )
        ],
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
