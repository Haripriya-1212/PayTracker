import 'package:driver_payments/screens/details.dart';
import 'package:driver_payments/screens/payDetails.dart';
import 'package:driver_payments/widget/driver.dart';
import 'package:driver_payments/screens/add.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var arrNames = ['Ramesh H','Hemanth K','Praveen M','Sharath','Harish','Sanjay Kumar','Tarun P','Akash M','Suresh P','Shashank'];
    var subtitles = ['MCM : 5 yrs','MCM : 7 yrs','MCM : 8 yrs','MCM : 3 yrs','MCM : 1 yrs','MCM : 7 yrs','MCM : 5 yrs','MCM : 3 yrs','MCM : 4 yrs','MCM : 2 yrs'];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      // appBar: AppBar(
      //   title: Text("MCM"),
      // ),
      body: Container(
        margin: EdgeInsets.only(top: 80),
        
        child: Padding(
          padding: const EdgeInsets.only(left:30.0, right: 30.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Drivers",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
              ),
              searchBox(),
              Expanded(
                child: Container(
                  child: ListView.separated(itemBuilder: (context, index) {
                    return ListTile(
                      onTap: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Details() 
                          ));
                      },
                      leading: Text('${index+1}'),
                      title: Text(arrNames[index]),
                      subtitle: Text(subtitles[index]),
                      trailing: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                            builder: (context) => OrderDetails()
                          ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          height: 30,
                          width: 60,
                          child: Center(child: Text("Pay", style: TextStyle(color: Colors.white, fontSize: 15),)),
                        ),
                      ),
                    );
                  
                  },
                  // reverse: true,
                  // itemExtent: 100,
                  itemCount: arrNames.length,
                  separatorBuilder: (context, index) {
                    return Divider(height: 30,thickness: 2,);
                  },),
                ),
              ),

              
            ]
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: (){
          Navigator.push(
          context, 
          MaterialPageRoute(
            builder: (context) => AddDriver()
            ));
        },
        child: Icon(Icons.add),
        ),
    );
  }


   Widget searchBox(){
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 217, 216, 216),
          borderRadius: BorderRadius.circular(20),
        ),
        child: TextField(
          onChanged: (value) => {},
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
            hintText: 'Search',
            hintStyle: TextStyle(color: Color(0xFF717171))
          ),
        ),
      );
    }
  
  }
