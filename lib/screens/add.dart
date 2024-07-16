import 'package:flutter/material.dart';

class AddDriver extends StatelessWidget{
  var nameController = new TextEditingController();
  var contactController = new TextEditingController();
  var dateController = new TextEditingController();
  var upiController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top:100, left: 40, right: 40),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "New Driver",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
              ),
            Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
            color: Color.fromARGB(216, 231, 230, 230),
            borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: nameController,
              onChanged: (value) => {},
              decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.person),
              hintText: 'Enter Name',
              hintStyle: TextStyle(color: Color(0xFF717171))
            ),
        ),
      ),
            Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
            color: Color.fromARGB(216, 231, 230, 230),
            borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: contactController,
              onChanged: (value) => {},
              decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.phone),
              hintText: 'Enter Phone Number',
              hintStyle: TextStyle(color: Color(0xFF717171))
            ),
        ),
      ),
            Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
            color: Color.fromARGB(216, 231, 230, 230),
            borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: dateController,
              
              decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.date_range),
              hintText: 'Enter date of joining',
              hintStyle: TextStyle(color: Color(0xFF717171))
            ),
        ),
      ),
            Container(
            margin: EdgeInsets.only(top: 30),
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
            color: Color.fromARGB(216, 231, 230, 230),
            borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              controller: upiController,
              onChanged: (value) => {},
              decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.payment),
              hintText: 'Enter UPI id',
              hintStyle: TextStyle(color: Color(0xFF717171))
            ),
        ),
      ),
      SizedBox(height: 40,),
      SizedBox(
        width: 500,
        height: 40,
        child: ElevatedButton(
                onPressed: (){
        
                }, 
                child: Text("A D D",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
                ),
                
              ),
      )
          ],)
      ),
    );
  }
  
}