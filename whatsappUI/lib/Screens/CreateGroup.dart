
import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/CustomUI/ButtonCard.dart';
import 'package:whatsapp_flutter/CustomUI/ContactCard.dart';
import 'package:whatsapp_flutter/Model/ChatModel.dart';

class CreateGroup extends StatefulWidget {
  @override
  _CreateGroupState createState() => _CreateGroupState();
}

class _CreateGroupState extends State<CreateGroup> {
  List<ChatModel>contacts=[
    ChatModel(name: "Akshay", status:"A full stack developer",),
    ChatModel(name: "Balram", status:"Hai all",),
    ChatModel(name: "Dev", status:"A flutter developer",),
    ChatModel(name: "Akhil", status:"A full stack developer",),
    ChatModel(name: "Akshay", status:"A full stack developer",),
    ChatModel(name: "Balram", status:"Hai all",),
    ChatModel(name: "Dev", status:"A flutter developer",),
    ChatModel(name: "Akhil", status:"A full stack developer",),
  ];
  List<ChatModel> groups = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("New Group",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
            Text("Add participants",
              style: TextStyle(fontSize: 13),)
          ],
        ),
        actions: [
          IconButton(icon:Icon(Icons.search,size: 26,),onPressed: (){},),

        ],
      ),
      body: ListView.builder(
          itemCount:contacts.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){
                if(contacts[index].select==false)
                 {
                  setState(() {
                    // ignore: unnecessary_statements
                    contacts[index].select==true;
                    groups.add(contacts[index]);
                  });
                }
                else{
                  setState(() {
                    // ignore: unnecessary_statements
                    contacts[index].select==false;
                    groups.remove(contacts[index]);
                  });
                }
              },
              child: ContactCard(
                contact: contacts[index],
              ),
            );
          }
      ),
    );
  }
}
