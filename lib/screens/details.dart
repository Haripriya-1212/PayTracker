import 'package:flutter/material.dart';

class Details extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrNames = ['Lunar','Apollo Medicals','Paragon','Lunar','Apollo Medicals','Paragon','Lunar','Apollo Medicals','Paragon',];
    var subtitles = ['12-04-2024','27-03-2024','14-03-2024','4-02-2024','17-01-2024','11-01-2024', '4-02-2024','17-01-2024','11-01-2024'];
    var payment = ['5000','2000','3900','2000','7000','1000', '5000','6000','3000'];
    return Scaffold(
        body: Container(
          margin: EdgeInsets.only(top:100, left: 40, right: 40),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text(
                  "Ramesh",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    color: Colors.black
                  ),
                ),

              Text("Date of joining : 10-10-2017"),
              Text("Phone Number : 765896538"),
              Text("UPI id : bvhbfvhb@okicici"),
              SizedBox(height:30),
                Text(
                  "History",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                  ),
                ),
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
                      trailing: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color.fromARGB(255, 186, 186, 186),
                        ),
                        height: 50,
                        width: 90,
                        child: Center(child: Text("Rs. "+payment[index], style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 13),)),
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

            ],
          )
        ),
    );
  }
  
}