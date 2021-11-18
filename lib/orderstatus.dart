import 'package:flutter/material.dart';
import 'package:jewell_summery/delivered.dart';
import 'package:jewell_summery/home.dart';
import 'package:jewell_summery/news.dart';
import 'package:jewell_summery/declained.dart';
class OrderStatus extends StatefulWidget {

  @override
  _OrderStatusState createState() => _OrderStatusState();
}

class _OrderStatusState extends State<OrderStatus> {
  @override


  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text('Order Status',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.amber[400]),),
            leading: IconButton(onPressed: (){
              Navigator.pop(context);
            },icon: Icon(Icons.arrow_back,color: Colors.amber[400],),),
          bottom: getAppBottom(),

          ),
          body: getBody(),
          bottomNavigationBar: getBottomnavigator(),
        ),
      ),
    );
  }
  PreferredSizeWidget getAppBottom(){
    return TabBar(
      unselectedLabelColor: Colors.amberAccent,

      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(gradient: LinearGradient(colors: [Colors.amberAccent,Colors.amberAccent]),
        borderRadius: BorderRadius.all(Radius.circular(25)),color:Colors.amberAccent ,
      ),
      tabs: [
        Tab(child: Align(alignment: Alignment.center,child: Text('New Order',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),),
        Tab(child: Align(alignment: Alignment.center,child: Text('Processing',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),),
        Tab(child: Align(alignment: Alignment.center,child: Text('Finished',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),),),
      ],
    );
  }
Widget getBody(){
    return TabBarView(
      children:<Widget> [
        getNewORderTable(),
        getProcessingTable(),
        getFinishedTable(),
      ],
    );
}
Widget getNewORderTable(){
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
                        child: Image.asset('asset/image/BG/BG1.jpg'),
                      ),
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
                          'Order NO : JS-001',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 01/11/2021',
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
                        child: Image.asset('asset/image/BR/BR1.jpg'),
                      ),

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
                          'Order NO : JS-002',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 02/11/2021',
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
                        child: Image.asset('asset/image/ER/ER1.jpg'),
                      ),

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
                          'Order NO : JS-003',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 03/11/2021',
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
                        child: Image.asset('asset/image/NK/NK1.jpg'),
                      ),
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
                          'Order NO : JS-004',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 04/11/2021',
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
                        child: Image.asset('asset/image/NP/NP1.jpg'),
                      ),
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
                          'Order NO : JS-005',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 05/11/2021',
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
                        child: Image.asset('asset/image/PD/PD1.jpg'),
                      ),

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
                          'Order NO : JS-006',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 06/11/2021',
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
                        child: Image.asset('asset/image/RN/RN1.jpg'),
                      ),
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
                          'Order NO : JS-007',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 07/11/2021',
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
                        child: Image.asset('asset/image/BG/BG2.jpg'),
                      ),
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
                          'Order NO : JS-008',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 08/11/2021',
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
                        child: Image.asset('asset/image/BR/BR2.jpg'),
                      ),

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
                          'Order NO : JS-009',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 09/11/2021',
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
                        child: Image.asset('asset/image/ER/ER2.jpg'),
                      ),

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
                          'Order NO : JS-0010',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 10/11/2021',
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
                        child: Image.asset('asset/image/NK/NK2.jpg'),
                      ),
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
                          'Order NO : JS-011',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 11/11/2021',
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
                        child: Image.asset('asset/image/NP/NP2.jpg'),
                      ),
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
                          'Order NO : JS-012',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 12/11/2021',
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
                        child: Image.asset('asset/image/PD/PD2.jpg'),
                      ),

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
                          'Order NO : JS-013',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 13/11/2021',
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
                        child: Image.asset('asset/image/RN/RN2.jpg'),
                      ),
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
                          'Order NO : JS-014',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 14/11/2021',
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

            ],
          ),
        ),]
      ),
    );
}
Widget getProcessingTable(){
    return Padding(
      padding: EdgeInsets.all(0),
      child: ListView(
        children: [Container(
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
                        child: Image.asset('asset/image/BG/BG3.jpg'),
                      ),
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
                          'Order NO : JS-015',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 15/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/BR/BR3.jpg'),
                      ),
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
                          'Order NO : JS-016',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 16/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/ER/ER3.jpg'),
                      ),
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
                          'Order NO : JS-017',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 17/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/NK/NK3.jpg'),
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
                          'Order NO : JS-018',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 18/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/NP/NP3.jpg'),
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
                          'Order NO : JS-019',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 19/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/PD/PD3.jpg'),
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
                          'Order NO : JS-020',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 20/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/RN/RN3.jpg'),
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
                          'Order NO : JS-021',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 21/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/BG/BG4.jpg'),
                      ),
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
                          'Order NO : JS-022',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 22/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/BR/BR4.jpg'),
                      ),
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
                          'Order NO : JS-023',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 23/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/ER/ER4.jpg'),
                      ),
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
                          'Order NO : JS-024',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 24/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/NK/NK4.jpg'),
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
                          'Order NO : JS-025',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 25/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/NP/NP4.jpg'),
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
                          'Order NO : JS-026',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 26/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/PD/PD4.jpg'),
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
                          'Order NO : JS-027',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 27/11/2021',
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
                                color: Colors.amber[400],
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
                        child: Image.asset('asset/image/RN/RN4.jpg'),
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
                          'Order NO : JS-028',
                          style: TextStyle(
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Due Date : 28/11/2021',
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
                                color: Colors.amber[400],
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  )
                ],
              ),
            ],
          ),
        ),]
      ),
    );
}
Widget getFinishedTable(){
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
                    child: Image.asset('asset/image/BG/BG5.jpg'),
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
                      'Order NO : JS-029',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 29/11/2021',
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
                    child: Image.asset('asset/image/BR/BR5.jpg'),
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
                      'Order NO : JS-030',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 30/11/2021',
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
                    child: Image.asset('asset/image/ER/ER5.jpg'),
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
                      'Order NO : JS-032',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 01/12/2021',
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
                    child: Image.asset('asset/image/NK/NK5.jpg'),
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
                      'Order NO : JS-033',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 02/12/2021',
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
                    child: Image.asset('asset/image/NP/NP5.jpg'),
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
                      'Order NO : JS-034',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 03/12/2021',
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
                    child: Image.asset('asset/image/PD/PD5.jpg'),
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
                      'Order NO : JS-035',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 04/12/2021',
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
                    child: Image.asset('asset/image/RN/RN5.jpg'),
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
                      'Order NO : JS-036',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 05/12/2021',
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
                    child: Image.asset('asset/image/BG/BG6.jpg'),
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
                      'Order NO : JS-036',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 05/12/2021',
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
                    child: Image.asset('asset/image/BR/BR6.jpg'),
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
                      'Order NO : JS-037',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 06/12/2021',
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
                    child: Image.asset('asset/image/ER/ER6.jpg'),
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
                      'Order NO : JS-039',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 08/12/2021',
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
                    child: Image.asset('asset/image/NK/NK6.jpg'),
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
                      'Order NO : JS-040',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 09/12/2021',
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
                    child: Image.asset('asset/image/NP/NP6.jpg'),
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
                      'Order NO : JS-041',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 10/12/2021',
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
                    child: Image.asset('asset/image/PD/PD6.jpg'),
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
                      'Order NO : JS-042',
                      style: TextStyle(
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Due Date : 11/12/2021',
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
                    child: Image.asset('asset/image/RN/RN6.jpg'),
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
                      'Due Date : 02/12/2021',
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
