import 'package:flutter/material.dart';
class UserPosts extends StatelessWidget {
 final String name;
 UserPosts({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Row(
               children: [
                 ///PROFILE PHOTO
                 Container(width: 40,height: 40,decoration: BoxDecoration(
                   color: Colors.grey[300],
                   shape: BoxShape.circle,
                 ),),
                 SizedBox(
                   width: 20,
                 ),

                 ///Name
                 Text(name,style: TextStyle(fontWeight: FontWeight.bold),
                 ),
               ],
             ),
              Icon(Icons.menu)
            ],
          ),
        ),

        ///POST
        Container(
          height: 200,
          color: Colors.grey[300],
        ),
        /// Below the Post > Buttons and Comments
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Row(
               children: [
                 Icon(Icons.favorite),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 12.0),
                   child: Icon(Icons.chat_bubble_outline),
                 ),
                 Icon(Icons.share),
               ],
             ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        ///Comments
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked By'), Text('Azeem',style: TextStyle(fontWeight: FontWeight.bold ),),
              Text('And'),
              Text('Others',style: TextStyle(fontWeight: FontWeight.bold ),),
            ],
          ),
        )
      ],
    );
  }
}




