import "package:flutter/material.dart";
import 'package:whatsapp/models/message_model.dart';
import "package:whatsapp/chatScreen.dart";

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Favourite Contacts",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                  fontSize: 16.0,
                  letterSpacing: 0.4,
                ),
              ),
              IconButton(
                onPressed: () {
                  print("hello");
                },
                icon: Icon(
                  Icons.more_horiz,
                  size: 25,
                  color: Colors.blueGrey,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: favourites.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  return Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ChatScreen(
                        user: favourites[index],
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Column(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: AssetImage(favourites[index].imageUrl),
                        radius: 35,
                      ),
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        favourites[index].name,
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
