import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget{
  var clientController = new TextEditingController();
  var destController = new TextEditingController();
  var dateController = new TextEditingController();
  var vehicleController = new TextEditingController();
  var payController = new TextEditingController();
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
                  "Order Details",
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
              controller:clientController,
              onChanged: (value) => {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
              border: InputBorder.none,
              hintText: 'Enter Client Name',
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
              controller: destController,
              onChanged: (value) => {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
              border: InputBorder.none,
              hintText: 'Enter Destination',
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
                contentPadding: EdgeInsets.only(left: 15),
              border: InputBorder.none,
              hintText: 'Enter Date of Delivery',
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
              controller: vehicleController,
              onChanged: (value) => {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
              border: InputBorder.none,
              hintText: 'Enter Vehicle Number',
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
              controller: vehicleController,
              onChanged: (value) => {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 15),
              border: InputBorder.none,
              hintText: 'Enter Amount',
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
                child: Text("P A Y",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
                ),
                
              ),
              
            ),
          ]),
        ),
      
    );
  }
  
}