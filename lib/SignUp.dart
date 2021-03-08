import 'package:flutter/material.dart';
import 'package:flutter_ap/Home.dart';
import 'package:flutter_ap/admin.dart';

class SignUp extends StatelessWidget {
  TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[600],
        body:
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
                Image(image: AssetImage("assets/images/profile.png"),
                  width: MediaQuery.of(context).size.width *0.75 ,
                  height: MediaQuery.of(context).size.height * 0.20 ,
                  color: Colors.black,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                Text('SignUP', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
                SizedBox(height:30,),
                _buildTextField(nameController, "Email or Username" , context , false , Icons.email_sharp),
                SizedBox(height: 10),
                _buildTextField(nameController, "Password", context, true, Icons.lock),
                SizedBox(height: 10,),
                _buildTextField(nameController, "Name" , context , false , Icons.drive_file_rename_outline),
                SizedBox(height: 10),
                _buildTextField(nameController, "Phone Number", context, true, Icons.phone),
                SizedBox(height: MediaQuery.of(context).size.height * 0.05,),
                MaterialButton(onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => admin() )),
                },
                  color: Colors.black,
                  minWidth: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Text(
                    "SignUP",
                    style:  TextStyle(color: Colors.white),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildTextField(TextEditingController controller,String labelText , BuildContext context , bool security , var icon) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.75,
      height: MediaQuery.of(context).size.height * 0.07,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.blue)),
      child: TextField(
        obscureText: security,
        controller: controller,
        style: TextStyle(color: Colors.black87),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            labelText: labelText,
            prefixIcon: Icon(icon),
            labelStyle: TextStyle(color: Colors.black87),
            // prefix: Icon(icon),
            border: InputBorder.none),
      ),
    );


  }
}