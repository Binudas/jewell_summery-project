import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';
class NewOrder extends StatefulWidget {
  @override
  _NewOrderState createState() => _NewOrderState();
}

class _NewOrderState extends State<NewOrder> {
  String? btnSelected;
  String? btnSelectedS;
  var itemsS=[
    'Amal',
    'Vinod',
    'Antony',
    'Joju',
    'Ashokan',
    'Dinesh',
    'Manoj'
  ];
  var items = [
    'Ring',
    'Bangle',
    'Name Ring',
    'Chain',
    'Earing',
    'Locket',
    'Name Locket',
    'Bracelet',
    'Anklet'
  ];
  @override



  DateTime currentdate=DateTime.now();
  TextEditingController _date=TextEditingController();

  Future<void>_selectDate(BuildContext context)async{
    DateFormat formatter=DateFormat('dd-MM-yyyy');
    final DateTime? pickedDate=await showDatePicker(
      context: context,
      initialDate: currentdate,
      firstDate:DateTime(2015),
      lastDate: DateTime(2050),
    );
    if(pickedDate!=null&&pickedDate!=currentdate)
      setState(() {
        currentdate=pickedDate;
        _date.value=TextEditingValue(text: formatter.format(pickedDate));
      });
  }
  Widget build(BuildContext context) {


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Create Order',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 35,
            ),
          ),
          backgroundColor: Colors.amber[400],
        ),
        body: getBody(),
      ),
    );
  }
  Widget getBody() {
    return ListView(children: [
      getImageSelection(),
      getDropDownItem(),
      getQt(),
      getSize(),
      getWeight(),
      getStnClr(),
      getDueDate(),
      getSalesmanDropDown(),
      getCustomer(),
      getCustomerNo(),
      getNarration(),
      getBtn(),
    ]);
  }
Widget getImageSelection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.fromLTRB(3, 10, 13, 10),
          width: MediaQuery.of(context).size.width / 3.5,
          height: 120,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.amber, width: 2),
              shape: BoxShape.rectangle),
          child: IconButton(
            icon: Icon(
              Icons.add_photo_alternate_outlined,
              color: Colors.amber,
              size: 80,
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.fromLTRB(3, 10, 13, 10),
          width: MediaQuery.of(context).size.width / 3.5,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.black12,
              border: Border.all(color: Colors.amber, width: 2),
              shape: BoxShape.rectangle),
          child: IconButton(
            icon: Icon(
              Icons.add_photo_alternate_outlined,
              color: Colors.amber,
              size: 80,
            ),
            onPressed: () {},
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.fromLTRB(3, 10, 13, 10),
          width: MediaQuery.of(context).size.width / 3.5,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.black12,
              border: Border.all(color: Colors.amber, width: 2),
              shape: BoxShape.rectangle),
          child: IconButton(
            icon: Icon(
              Icons.add_photo_alternate_outlined,
              color: Colors.amber,
              size: 80,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
Widget getDropDownItem() {

    return Container(
        margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.amber, width: 2),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        height: 60,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.collections_bookmark),
            SizedBox(
              width: 20,
            ),
            SizedBox(
              width: 280,
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white60))),
                value: btnSelected,
                elevation: 0,
                iconSize: 30,
                style: TextStyle(color: Colors.black, fontSize: 16),
                focusColor: Colors.amber,
                hint: Text('Select Design'),
                items: items.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    btnSelected = newValue!;
                  });
                },
              ),
            )
          ],
        ));
  }
Widget getQt(){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 15, 12, 0),
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          prefixIcon: Icon(Icons.adjust,color: Colors.black,size: 30,),
          labelStyle: TextStyle(color: Colors.black),
          labelText: 'Quantity',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
Widget getSize(){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 15, 12, 0),
      child: TextFormField(
        //keyboardType: TextInputType.number,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          prefixIcon: Icon(Icons.eleven_mp_outlined,color: Colors.black,size: 30,),
          labelStyle: TextStyle(color: Colors.black),
          labelText: 'Size',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
}
Widget getWeight(){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 15, 12, 0),
      child: TextFormField(
        //keyboardType: TextInputType.number,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          prefixIcon: Icon(Icons.monitor_weight,color: Colors.black,size: 30,),
          labelStyle: TextStyle(color: Colors.black),
          labelText: 'Weight',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
}
Widget getStnClr(){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 15, 12, 0),
      child: TextFormField(
        //keyboardType: TextInputType.number,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          prefixIcon: Icon(Icons.color_lens_rounded,color: Colors.black,size: 30,),
          labelStyle: TextStyle(color: Colors.black),
          labelText: 'Stone Color',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
}
Widget getDueDate(){
  return Padding(
    padding: EdgeInsets.fromLTRB(10, 15, 12, 0),
        child: InkWell(
          onTap: (){
              _selectDate(context);

          },
          child: IgnorePointer(
            child: TextFormField(
              controller: _date,
              //keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefixIcon: Icon(Icons.calendar_today_sharp,color: Colors.black,size: 30,),
                labelStyle: TextStyle(color: Colors.black),
                labelText: 'Due Date',
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber,width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
        ),


  );
}
Widget getSalesmanDropDown(){
  return Container(
      margin: EdgeInsets.fromLTRB(10, 15, 12, 0),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.amber, width: 2),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 60,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.emoji_people,),
          SizedBox(
            width: 20,
          ),
          SizedBox(
            width: 280,
            child: DropdownButtonFormField(
              decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white60))),
              value: btnSelectedS,
              elevation: 0,
              iconSize: 30,
              style: TextStyle(color: Colors.black, fontSize: 16),
              focusColor: Colors.amber,
              hint: Text('Salesman'),
              items: itemsS.map((String itemsS) {
                return DropdownMenuItem(
                  value: itemsS,
                  child: Text(itemsS),
                );
              }).toList(),
              onChanged: (String? newValueS) {
                setState(() {
                  btnSelectedS = newValueS!;
                });
              },
            ),
          )
        ],
      ));
}
Widget getCustomer(){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 15, 12, 0),
      child: TextFormField(
        //keyboardType: TextInputType.number,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          prefixIcon: Icon(Icons.assignment_ind_sharp,color: Colors.black,size: 30,),
          labelStyle: TextStyle(color: Colors.black),
          labelText: 'Customer',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
Widget getCustomerNo(){
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 15, 12, 0),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          prefixIcon: Icon(Icons.call,color: Colors.black,size: 30,),
          labelStyle: TextStyle(color: Colors.black),
          prefixText: '+91 ',
          labelText: 'Customer Number',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.amber,width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }
Widget getNarration(){
  return Padding(
    padding: EdgeInsets.fromLTRB(10, 15, 12, 0),
    child: TextFormField(
      textCapitalization: TextCapitalization.sentences,
      maxLines: 5,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber,width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber,width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red,width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber,width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        labelStyle: TextStyle(color: Colors.black),
        labelText: 'Description',
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.amber,width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    ),
  );
}
Widget getBtn(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
      child: RawMaterialButton(onPressed: (){},elevation: 0,fillColor: Colors.amber[400],shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
        child: Text('Create Order',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
      constraints: BoxConstraints(minHeight:65,minWidth: 75),
      ),
    );
 }
}
