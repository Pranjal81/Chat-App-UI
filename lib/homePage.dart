import "package:flutter/material.dart";
import 'package:whatsapp/widgets/favourites.dart';
import 'package:whatsapp/widgets/recentChats.dart';
import "widgets/categorySelector.dart";

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Colors.red,
                  Colors.white,
                ]),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(60)),
                      child: Material(
                        elevation: 0,
                        child: Image.asset(
                          'assets/Marcus.jpg',
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Flutter",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
            CustomListTile(
                text: "Profile", icon: Icons.person, onTap: () => {}),
            CustomListTile(
                text: "Notifications",
                icon: Icons.notifications,
                onTap: () => {}),
            CustomListTile(
                text: "Settings", icon: Icons.settings, onTap: () => {}),
            CustomListTile(text: "Logout", icon: Icons.lock, onTap: () => {}),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Chats",
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
          ),
          iconSize: 30.0,
        ),
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            iconSize: 30,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: <Widget>[
                  Favourites(),
                  SizedBox(
                    height: 20.0,
                  ),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  String text;
  IconData icon;
  Function onTap;

  CustomListTile({this.text, this.icon, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade400,
          ),
        ),
      ),
      child: InkWell(
        splashColor: Colors.red,
        onTap: onTap,
        child: Container(
          height: 60,
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(icon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
