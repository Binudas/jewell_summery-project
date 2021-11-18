import 'package:flutter/material.dart';
class Resetpaswrd extends StatefulWidget {
  const Resetpaswrd({Key? key}) : super(key: key);

  @override
  _ResetpaswrdState createState() => _ResetpaswrdState();
}

class _ResetpaswrdState extends State<Resetpaswrd> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child:Text('Reset Password')),),
    );
  }
}
