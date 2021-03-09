import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: fragment(),
  ));
}

class fragment extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState

    return TabsState();
  }
}

class TabsState extends State<fragment> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return DefaultTabController(
        length: 3,
        child: new Scaffold(
          backgroundColor: Colors.yellow[600],
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                'Order History',
                style: TextStyle(color: Colors.yellow[600]),
              ),
              bottom: TabBar(labelColor: Colors.yellow[600], tabs: [
                Tab(
                  icon: Icon(Icons.pending_actions_sharp),
                  text: 'Pending',
                ),
                Tab(
                  icon: Icon(Icons.delivery_dining),
                  text: 'Delivered',
                ),
                Tab(
                  icon: Icon(Icons.cancel_outlined),
                  text: 'Canceled',
                ),
              ]),
            ),
            body: TabBarView(children: [
              SingleChildScrollView(
                child: new Container(
                  color: Colors.yellow[600],
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        OrderPending(),
                      ],
                    )
                  ),
                ),
              ),
              SingleChildScrollView(
                child: new Container(
                  color: Colors.yellow[600],
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        OrderDelivered(),
                      ],
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                child: new Container(
                  color: Colors.yellow[600],
                  child: Center(
                      child: new Column(
                        children: <Widget>[
                          OrderCanceled(),
                        ],
                      ),
                  ),
                ),
              ),
            ])));
  }

  Widget OrderCanceled(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.black,
      ),
      margin: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.width *0.97,
      child: new Card(color: Colors.black,
        child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.all(7.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08),
                      child: Column(
                        children: <Widget>[
                          Text("Order ID : FINGO-00001", style: TextStyle(color: Colors.white, fontSize: 20),),
                          SizedBox(height: 4,),
                          Text("Status : Canceled",textAlign: TextAlign.left, style: TextStyle(color: Colors.red, fontSize: 16),),
                          SizedBox(height: 4,),
                          Text("Date : Mar 09 , 2021  Time : 23:45:34 ",textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontSize: 16),),
                          MaterialButton(onPressed: () => {
                          },
                            color: Colors.red,
                            minWidth: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Text(
                              "Re-Order",
                              style:  TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.alarm_off,color: Colors.red, size: MediaQuery.of(context).size.height * 0.1,)
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
  Widget OrderDelivered(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.black,
      ),
      margin: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.width *0.97,
      child: new Card(color: Colors.black,
        child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.all(7.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08),
                      child: Column(
                        children: <Widget>[
                          Text("Order ID : FINGO-00001", style: TextStyle(color: Colors.white, fontSize: 20),),
                          SizedBox(height: 4,),
                          Text("Status : Delivered",textAlign: TextAlign.left, style: TextStyle(color: Colors.green, fontSize: 16),),
                          SizedBox(height: 4,),
                          Text("Date : Mar 09 , 2021  Time : 23:45:34 ",textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontSize: 16),),
                          MaterialButton(onPressed: () => {
                          },
                            color: Colors.green,
                            minWidth: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Text(
                              "View Details",
                              style:  TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.check,color: Colors.green, size: MediaQuery.of(context).size.height * 0.1,)
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
  Widget OrderPending(){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.black,
      ),
      margin: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.16,
      width: MediaQuery.of(context).size.width *0.97,
      child: new Card(color: Colors.black,
        child: new Column(
          children: <Widget>[
            new Padding(
                padding: new EdgeInsets.all(7.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.08),
                      child: Column(
                        children: <Widget>[
                          Text("Order ID : FINGO-00001", style: TextStyle(color: Colors.white, fontSize: 20),),
                          SizedBox(height: 4,),
                          Text("Status : Pending",textAlign: TextAlign.left, style: TextStyle(color: Colors.blueAccent, fontSize: 16),),
                          SizedBox(height: 4,),
                          Text("Date : Mar 09 , 2021  Time : 23:45:34 ",textAlign: TextAlign.left, style: TextStyle(color: Colors.white, fontSize: 16),),
                          MaterialButton(onPressed: () => {
                          },
                            color: Colors.blueAccent,
                            minWidth: MediaQuery.of(context).size.width * 0.3,
                            height: MediaQuery.of(context).size.height * 0.03,
                            child: Text(
                              "View Details",
                              style:  TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.pending_sharp,color: Colors.blueAccent, size: MediaQuery.of(context).size.height * 0.1,)
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
