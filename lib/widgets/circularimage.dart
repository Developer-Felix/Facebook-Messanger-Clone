import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final status;
  final img; 
  final online;
  const CircularImage(this.status,{ Key? key,  this.img,@required this.online }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(8), 
                  child: Stack(
                    children: [
                      
                      Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: status ? Border.all(color: Colors.blue,width: 3) : Border.all(color: Colors.white,width: 3),
                      ),
                    child: CircleAvatar(
                  radius:  30,
                  backgroundColor: Colors.grey[300],
                  backgroundImage: AssetImage("images/$img"),
                  ) ,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 2,
                        child: Visibility(
                          visible: online,
                          child:
                        Container(height: 15,width: 15,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white,width: 1),
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.green
                          ),
                        ),
                         ),
                        
                        
                        ),

                    ],),
                  
                   
                  
                   
                  );
  }
}