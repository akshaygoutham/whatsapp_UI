import 'package:flutter/material.dart';
import 'package:whatsapp_flutter/Page/ChatPage.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this,initialIndex: 1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp Clone"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          PopupMenuButton<String>(
          onSelected: (value){
            print(value);
          },
          itemBuilder: (BuildContext context){
          return [
            PopupMenuItem(child: Text("New group"),value:"New group" ,),
            PopupMenuItem(child: Text("New broadcast"),value:"New broadcast" ,),
            PopupMenuItem(child: Text("Linked Device"),value:"Linked Device" ,),
            PopupMenuItem(child: Text("Starred Messages"),value:"Starred Messages" ,),
            PopupMenuItem(child: Text("Whatsapp Web"),value:"Whatsapp Web" ,),
            PopupMenuItem(child: Text("Settings"),value:"Settings" ,),
        ];
        },
        ),
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt_outlined),),
            Tab(
              text:"Chats",
            ),
            Tab(
              text:"Status",
            ),
            Tab(text: "Calls",)
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("camera"),
          ChatPage(),
          Text("status"),
          Text("calls"),
        ],
      ),
    );
  }
}
