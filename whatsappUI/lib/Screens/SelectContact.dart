
import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/CustomUI/ButtonCard.dart';
import 'package:whatsapp_flutter/CustomUI/ContactCard.dart';
import 'package:whatsapp_flutter/Model/ChatModel.dart';
import 'package:whatsapp_flutter/Screens/CreateGroup.dart';

class SelectContact extends StatefulWidget {
  @override
  _SelectContactState createState() => _SelectContactState();
}

class _SelectContactState extends State<SelectContact> {
  @override
  Widget build(BuildContext context) {
    List<ChatModel>contacts=[
      ChatModel(
        name: "Akshay",
        status:"A full stack developer",
      ),
      ChatModel(
        name: "Balram",
        status:"Hai all",
      ),
      ChatModel(
        name: "Dev",
        status:"A flutter developer",
      ),
      ChatModel(
        name: "Akhil",
        status:"A full stack developer",
      ),ChatModel(
        name: "Akshay",
        status:"A full stack developer",
      ),
      ChatModel(
        name: "Balram",
        status:"Hai all",
      ),
      ChatModel(
        name: "Dev",
        status:"A flutter developer",
      ),
      ChatModel(
        name: "Akhil",
        status:"A full stack developer",
      ),


    ];
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select Contact",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
            Text("250 Contact",
              style: TextStyle(fontSize: 13),)
          ],
        ),
        actions: [
          IconButton(icon:Icon(Icons.search,size: 26,),onPressed: (){},),
          PopupMenuButton<String>(
            onSelected: (value){
              print(value);
            },
            itemBuilder: (BuildContext context){
              return [
                PopupMenuItem(child:
                Text("Invite a friend"),
                  value:"Invite a friend" ,),
                PopupMenuItem(
                  child: Text("Contacts"),value:"Contacts" ,),
                PopupMenuItem(
                  child: Text("Refresh"),value:"Refresh" ,),
                PopupMenuItem(
                  child: Text("Help"),value:"Help" ,),
              ];
            },
          ),
        ],
      ),
      body: ListView.builder(

        itemCount:contacts.length+2 ,
        itemBuilder: (context,index){
          if(index==0){
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (builder)=>CreateGroup()));
              },
                child: ButtonCard(
                  icon: Icons.group,
                  name: "New group",));
          }else if (index==1){
              return ButtonCard(
                icon: Icons.person_add,
                name: "New Contact",);
            }
            return ContactCard(
              contact: contacts[index-2],
            );
          }
        ),
    );
  }
}
