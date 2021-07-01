import 'package:flutter/material.dart';

void main() => runApp(MyHome());

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black,
              ),
              accountName: Text('YoungHun'),
              accountEmail: Text('21800125@handong.edu'),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40.0),
                  bottomLeft: Radius.circular(40.0),
                )
              ),
            ),
            ListTile(
              leading: Icon(Icons.local_laundry_service_outlined,
                color: Colors.grey[850],
              ),
              title: Text('세탁',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: (){},
              trailing: Icon(Icons.add),
            ),
          ]
        )
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),//drawer color changes
        actions: <Widget> [
          IconButton(
            icon: Icon(Icons.home,
            ),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('이름넣을곳',
        style: TextStyle(
          fontSize: 25.0,
          letterSpacing: 2.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        )
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,100.0, 0.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //글자 좌중우 정해
          children: <Widget> [
            Text('세탁기',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
              letterSpacing: 2.0,
            ),
            ),
            /*
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: 100,
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  color: Colors.green,
                  width: 80,
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                ),
                Container(
                  color: Colors.blue,
                  width: 50,
                  height: 100,
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.all(8.0),
                )
              ]
            ),*/
            ListView(
              scrollDirection: Axis.vertical,
              children: <Widget> [
                ListTile(
                  leading: Icon(Icons.local_laundry_service,
                  color: Colors.black),
                  title: Text('세탁기 1번'),
                )
              ]
            ),


            Text('건조기',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue,
              letterSpacing: 2.0,
            ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.local_laundry_service_outlined),
          title: Text('laundary'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('setting'),
        )
      ]),
    );
  }
}

