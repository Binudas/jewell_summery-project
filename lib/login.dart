import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:jewell_summery/home.dart';
import 'package:jewell_summery/resetpwd.dart';
import 'package:lottie/lottie.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  @override
  TextEditingController _username=TextEditingController();
  TextEditingController _password=TextEditingController();
  bool _uservalid=true;
  bool _pawvalid=true;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: getBodyLogin(),
      ),
    );
  }
  Widget getBodyLogin(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      //alignment: Alignment.topCenter,
      child: ListView(
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.fromLTRB(5, 15, 5, 5),
              child: Lottie.asset('asset/json/login.json',
                  height: MediaQuery.of(context).size.width/2,width: MediaQuery.of(context).size.width/2),
            ),
            Padding(padding: EdgeInsets.all(5),
              child:Text('LOG IN',style: TextStyle(fontSize: 30,color: Colors.amber,fontWeight: FontWeight.bold),)
            ),
            Padding(padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
            child: TextFormField(
              controller: _username,
              decoration: InputDecoration(
                hoverColor: Colors.amber,
                prefixIcon: Icon(Icons.people,size: 30,color: Colors.amber,),
                labelText: 'User Name',
                errorText: _uservalid?null:'Plese Enter UserName',
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
            Padding(padding: EdgeInsets.fromLTRB(25, 10, 25, 5),
    child: TextFormField(
      obscureText: true,
    controller: _password,
    decoration: InputDecoration(
    //suffix: IconButton(icon: Icon(Icons.visibility,),onPressed: (){},),
    hoverColor: Colors.amber,
    prefixIcon: Icon(Icons.security_outlined,size: 30,color: Colors.amber,),
    labelText: 'Password',
    errorText: _pawvalid?null:'Plese Enter Password',
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
                padding: EdgeInsets.fromLTRB(5, 15, 5, 5),child:
            RawMaterialButton(onPressed: (){
              //savedDataToStorage();
              if(_username.text.isNotEmpty&&_password.text.isNotEmpty){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              }else{
                Fluttertoast.showToast(msg: 'Invalid User Name or Password',gravity: ToastGravity.CENTER);
              }

            },elevation: 0,fillColor: Colors.amber[400],shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
              child: Text('    LOG IN    ',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              constraints: BoxConstraints(minHeight:65,minWidth: 75),
            ),
            ),
            Padding(padding: EdgeInsets.fromLTRB(5, 1, 5, 5),
              child: TextButton(child: Text('Forgot Password ? ',style: TextStyle(fontSize: 15),),onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Resetpaswrd()));
              },),
            )
          ],

        ),]
      ),
    );
  }
  // Future<void>savedDataToStorage() async{
  //   final sharedPreference=await SharedPreferences.getInstance();
  //   await sharedPreference.setString('    LOG IN    ', _username.text);
  //
  // }
}
