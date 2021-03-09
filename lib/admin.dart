import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ap/Home.dart';
import 'package:flutter_ap/SignUp.dart';
import 'package:flutter_ap/ordershistory.dart';

class admin extends StatelessWidget {
  TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.yellow[600],
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.20,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Welcome Back" , style: TextStyle(color: Colors.white , fontSize:  25  , fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                            Text("John Smith" , style: TextStyle(color: Colors.yellow[600] , fontSize:  18 ),)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(image: AssetImage("assets/images/profileicon.png") ,
                                height: MediaQuery.of(context).size.height * 0.20,
                                width: MediaQuery.of(context).size.width * 0.27,
                              color: Colors.yellow[600],

                            ),
                          ],
                        ),
                      ),

                    ],
                  ),

                ),
              ),
              SizedBox(height: 20,),
              Card(
                color: Colors.black,
                child: ListTile(
                  leading: Icon(Icons.home , color: Colors.yellow[600],),
                  title: Center(child: Text("Home" , style: TextStyle(color: Colors.yellow[600] , fontSize: 20),)),
                  //trailing: Icon(Icons.ac_unit),
                ),
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  leading: Icon(Icons.person_rounded , color: Colors.yellow[600],),
                  title: Center(child: Text("Profile" , style: TextStyle(color: Colors.yellow[600] , fontSize: 20),)),
                  //trailing: Icon(Icons.ac_unit),
                ),
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  leading: Icon(Icons.notification_important , color: Colors.yellow[600],),
                  title: Center(child: Text("Notifications" , style: TextStyle(color: Colors.yellow[600] , fontSize: 20),)),
                  //trailing: Icon(Icons.ac_unit),
                ),
              ),
              InkWell(
                onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context) => orderhistory()));
                },
                child: Card(
                  color: Colors.black,
                  child: ListTile(
                    leading: Icon(Icons.add_shopping_cart , color: Colors.yellow[600],),
                    title: Center(child: Text("Orders" , style: TextStyle(color: Colors.yellow[600] , fontSize: 20),)),
                    //trailing: Icon(Icons.ac_unit),
                  ),
                ),
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  leading: Icon(Icons.calendar_today_sharp , color: Colors.yellow[600],),
                  title: Center(child: Text("Appoinments" , style: TextStyle(color: Colors.yellow[600] , fontSize: 20),)),
                  //trailing: Icon(Icons.ac_unit),
                ),
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  leading: Icon(Icons.payments_sharp , color: Colors.yellow[600],),
                  title: Center(child: Text("Payment Methods" , style: TextStyle(color: Colors.yellow[600] , fontSize: 20),)),
                  //trailing: Icon(Icons.ac_unit),
                ),
              ),
              Card(
                color: Colors.black,
                child: ListTile(
                  leading: Icon(Icons.feedback_sharp , color: Colors.yellow[600],),
                  title: Center(child: Text("Feedback" , style: TextStyle(color: Colors.yellow[600] , fontSize: 20),)),
                  //trailing: Icon(Icons.ac_unit),
                ),
              ),

              SizedBox(height: 30),

              MaterialButton(onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp() )),
              },
                color: Colors.red[800],
                minWidth: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.05,
                child: Text(
                  "LOGOUT",
                  style:  TextStyle(color: Colors.white),
                ),
              ),

            ],
          )
      ),
    );
  }
}
