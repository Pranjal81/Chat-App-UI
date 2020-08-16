import "user_model.dart";

class Message {
  User sender;
  String time;
  bool unread;
  bool isliked;
  String text;

  Message({this.isliked, this.sender, this.text, this.time, this.unread});
}

User sam = User(id: 0, name: "Sam", imageUrl: "assets/Sam.jpg");
User marcus = User(id: 1, name: "Marcus", imageUrl: "assets/Marcus.jpg");
User sophia = User(id: 2, name: "Sophia", imageUrl: "assets/Sophia.jpg");
User rohit = User(id: 3, name: "Rohit", imageUrl: "assets/Rohit.jpg");
User angelina = User(id: 4, name: "Angelina", imageUrl: "assets/Angelina.jpg");
User martha = User(id: 5, name: "Martha", imageUrl: "assets/Martha.jpg");

List<User> favourites = [marcus, sophia, martha, sam, rohit, angelina];

List<Message> chats = [
  Message(
    sender: sam,
    time: "9:30 p.m.",
    isliked: false,
    text: "Hey, Sam here. What are you doing nowdays?",
    unread: true,
  ),
  Message(
    sender: martha,
    time: "4:00 p.m.",
    isliked: false,
    text: "Do you need any type of help in college projects?",
    unread: false,
  ),
  Message(
    sender: sophia,
    time: "5:30 a.m.",
    isliked: false,
    text: "Hey, buddy! How are you doing?",
    unread: true,
  ),
  Message(
    sender: rohit,
    time: "1:00 p.m.",
    isliked: false,
    text:
        "Ok! So we have to setup a meeting tomorrow morning. Is 10'o clock at Lavaender's Cafe is good for you??",
    unread: false,
  ),
  Message(
    sender: angelina,
    time: "9:30 p.m.",
    isliked: true,
    text: "Do you wanna hangout with me?",
    unread: false,
  ),
  Message(
    sender: sam,
    time: "9:30 p.m.",
    isliked: false,
    text: "Hey, Sam here. What are you doing nowdays?",
    unread: false,
  ),
  Message(
    sender: martha,
    time: "4:00 p.m.",
    isliked: false,
    text: "Do you need any type of help in college projects?",
    unread: false,
  ),
  Message(
    sender: sophia,
    time: "5:30 a.m.",
    isliked: false,
    text: "Hey, buddy! How are you doing?",
    unread: false,
  ),
  Message(
    sender: rohit,
    time: "1:00 p.m.",
    isliked: false,
    text:
        "Ok! So we have to setup a meeting tomorrow morning. Is 10'o clock at Lavaender's Cafe is good for you??",
    unread: false,
  ),
  Message(
    sender: angelina,
    time: "9:30 p.m.",
    isliked: true,
    text: "Do you wanna hangout with me?",
    unread: false,
  ),
];
