import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jewell_summery/home.dart';
import 'package:jewell_summery/login.dart';
import 'package:lottie/lottie.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}



class _SplashState extends State<Splash> {
  @override

  void initState(){
    super.initState();
    Timer(Duration(seconds: 10),()=>Navigator.push(context, MaterialPageRoute(builder: (contex)=>LogIn())));
  }
  Widget build(BuildContext context) {
    //getSavedData(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,

            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:[ CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 150,
                child: ClipOval(
                  child: Image.asset('asset/image/gbglogo.png'),
                ),
              ),
                Lottie.asset('asset/json/loading.json',height: 150)

          ]
            ),
            //Lottie.asset('asset/json/loading.json',height: 100)

        )
        ),
    );
  }
  // Future<void>getSavedData(BuildContext context)async{
  //   final sharedPrefs=await SharedPreferences.getInstance();
  //   final savedValue=sharedPrefs.getString('    LOG IN    ');
  //   if(savedValue!=null){
  //     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
  //   }
  // }
}
