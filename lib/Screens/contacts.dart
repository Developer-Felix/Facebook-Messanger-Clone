import 'package:facebook_clone/widgets/circularimage.dart';
import 'package:facebook_clone/widgets/conversation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({ Key? key }) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment : MainAxisAlignment.spaceBetween,
              children: [
            
            
            Padding(padding: const EdgeInsets.all(8.0),
            child: 
            Row(
              
              children: [
                Stack(children: [
                   Padding(padding: const EdgeInsets.all(8.0),
                child:   CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/felix.jpg"),
                )
              ,
                ),
                 Positioned(
                   right: 2,
                   child: 
            Container(
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(12),border: Border.all(color: Colors.white,width: 2)),
              
              child :
              Padding(padding: const EdgeInsets.only(left: 8,right: 8) ,
              child: Text("+9",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600),),
              )
               
            )
            )
                
                ],),
               Text("Chats",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,),)
              ],
            )
            ,
            ),
            
            
            Padding(padding: const EdgeInsets.all(8.0),
            child: 
            Row(
              children: [
                CircleAvatar(
                  // backgroundColor: Colors.grey.withOpacity(0.4),
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.camera_alt,color: Colors.black,),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.edit,color: Colors.black,),
                ),
              ],
            )
            ,
            )
            
            
            
            ],
            ),
            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 14,right: 14),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[300],borderRadius: BorderRadius.circular(25),
                
                ),
              width: MediaQuery.of(context).size.width - 44,
              child: Padding(padding: const EdgeInsets.only(left: 12.0),
              child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                border: InputBorder.none,
                icon: Icon(Icons.search)
                ),
            ),
              ) 
            ,),
            
            ),
            
            SizedBox(
              height: 10,
            ),
             Container(
               height:  80,
               child: ListView(
                  scrollDirection: Axis.horizontal,
                 children: [
                Padding(
                  padding: const EdgeInsets.only(left: 14), 
                  child:CircleAvatar(
                  radius:  25,
                  backgroundColor: Colors.grey[300],
                  child: Icon(Icons.add,size: 24,color: Colors.black,),
                  ) , 
                  ),
                  CircularImage( false,img : "felix.jpg",online: true,),
                  CircularImage(true,img : "tech.jpg",online: true),
                  CircularImage(false,img : "felix2.jpg",online: false),
                  CircularImage(true,img : "harier.jpg",online: false),
                  CircularImage(true,img : "marion.jpg",online: true),
                  CircularImage(true,img : "dad.jpg",online: false),
                  
                 
               ],)
               
             ),
            
            SizedBox(
              height: 10,
              ),
              Conversation(false,avatar: "tech.jpg",name: "TeamtechKenya",msg: "Hae there...",time: "6.00 pm",),
              Conversation(true,avatar: "silicon.jpg",name: "Silicon Valley",msg: "Hello Felix",time: "5.12 pm",),
              Conversation(true,avatar: "dad.jpg",name: "Pst. Evans",msg: "Blessed day Felix",time: "2.30 pm",),
              Conversation(false,avatar: "marion.jpg",name: "Sweet Heart",msg: "Hae Darling",time: "1.00 pm",),
              Conversation(false,avatar: "google.jpg",name: "Google",msg: "Hae Felix",time: "1.00 pm",),
              Conversation(false,avatar: "bytecity.png",name: "Byte City",msg: "Hae Fello",time: "1.00 pm",),
              Conversation(false,avatar: "avatar.jpg",name: "Alex Aminga",msg: "Blessed day",time: "1.00 pm",),
              Conversation(false,avatar: "avatar.jpg",name: "Steve",msg: "Blessed day Ninja",time: "6.00 pm",),
              Conversation(true,avatar: "avatar.jpg",name: "Felistus",msg: "Blessed day Ninja",time: "6.00 pm",),
              Conversation(false,avatar: "avatar.jpg",name: "Florine",msg: "Blessed day Ninja",time: "6.00 pm",),
              Conversation(false,avatar: "avatar.jpg",name: "Chella",msg: "Blessed day Ninja",time: "6.00 pm",),
              Conversation(false,avatar: "avatar.jpg",name: "Pst. Evans",msg: "Blessed day Ninja",time: "6.00 pm",),
              Conversation(true,avatar: "felix2.jpg",name: "Evans Son",msg: "Fine Dear",time: "6.00pm",),
              Conversation(false,avatar: "avatar.jpg",name: "Pst. Evans",msg: "Blessed day Ninja",time: "6.00 pm",),
              Conversation(false,avatar: "avatar.jpg",name: "Victor",msg: "Momura",time: "6.00pm",),
              Conversation(false,avatar: "avatar.jpg",name: "Pst. Evans",msg: "Blessed day Ninja",time: "6.00 pm",),
              Conversation(false,avatar: "avatar.jpg",name: "Pst. Evans",msg: "Blessed day Ninja",time: "6.00 pm",),
              Conversation(false,avatar: "felix.jpg",name: "Onjomba Felix",msg: "Hae",time: "6.00pm",),
              

            ],),
      ),
    );
  }
}