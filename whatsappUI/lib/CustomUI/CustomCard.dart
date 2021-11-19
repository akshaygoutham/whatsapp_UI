import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_flutter/Model/ChatModel.dart';
import 'package:whatsapp_flutter/Screens/IndividualPage.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({Key key,this.chatModel}) :super( key: key);
  final ChatModel chatModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>IndividualPage(chatModel: chatModel,)));
      } ,
      child: Column(
        children: [
          ListTile(
           leading: CircleAvatar(
           radius: 30,
           child: SvgPicture.asset(
             chatModel.isGroup ? "assets/groups.svg":"assets/person.svg",
             color: Colors.white,
             width: 37,
             height: 37,
           ),
           backgroundColor: Colors.grey,
   ),
            title: Text(chatModel.name,
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                 ),
            ),
            subtitle:Row(
              children: [
                Icon(Icons.done_all,size: 15,),
                SizedBox(
                  width: 3,
                ),
                Text(chatModel.currentMessage,
                  style: TextStyle(fontSize: 13
                  ),
                ),
              ],
            ),
            trailing: Text(chatModel.time),
          ),
          Padding(padding:EdgeInsets.only(right: 20,left: 80),
          child:  Divider(
            thickness: 1,
          ),
          ),

        ],
      ),
    );
  }
}
