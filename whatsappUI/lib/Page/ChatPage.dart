import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/CustomUI/CustomCard.dart';
import 'package:whatsapp_flutter/Model/ChatModel.dart';
import 'package:whatsapp_flutter/Screens/SelectContact.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatModel> chats =[
    ChatModel(
      name: "Akshay",
      isGroup: false,
      currentMessage: " Hey  Good Morning",
      time: "4:00",
      icon: "assets/person.svg",
    ),
    ChatModel(
      name: "Joy",
      isGroup: false,
      currentMessage: " Good Morning",
      time: "10:00",
      icon: "assets/person.svg",
    ),
    ChatModel(
      name: "Ann",
      isGroup: false,
      currentMessage: " Hello",
      time: "11:00",
      icon: "assets/person.svg",
    ),
    ChatModel(
      name: "Multi model Group",
      isGroup: true,
      currentMessage: " Hey Everyone",
      time: "4:00",
      icon: "assets/groups.svg",  
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder : (builder)=>SelectContact()));
        },
        child: Icon(Icons.chat),
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context,index)=>CustomCard(chatModel : chats[index]),
      ),
    );
  }
}
