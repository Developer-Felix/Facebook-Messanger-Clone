import 'package:flutter/material.dart';

class Conversation extends StatelessWidget {
  final avatar;
  final name;
  final msg;
  final isRead;
  const Conversation(this.isRead,{ Key? key,this.avatar,this.name,this.msg }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
                leading:  CircleAvatar(radius: 25, backgroundImage: AssetImage("images/$avatar"),),
                title: Text("$name"),
                subtitle: Text("$msg"),
                trailing:Container(height: 12,width: 12,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 1),
                          borderRadius: BorderRadius.circular(20),
                          color: isRead? Colors.white : Colors.blue
                          ),
                        ), 
              );
  }
}