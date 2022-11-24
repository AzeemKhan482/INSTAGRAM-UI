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
                   color: Colors.purple[200],
                   shape: BoxShape.circle,
                 ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset("assets/images/profile.jpeg",
                fit: BoxFit.fill,
                width:double.infinity,             height:double.infinity,           ),         ),       ) ,


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
          color: Colors.purple[200],
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
        ///like By
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked By'), Text(' Azeem',style: TextStyle(fontWeight: FontWeight.bold ),),
              Text(' And '),
              Text('Others',style: TextStyle(fontWeight: FontWeight.bold ),),
            ],
          ),
        ),
        /// caption
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8),
          child: RichText(
    text: TextSpan(
      children: [
        TextSpan(text: 'MuhibFreiend',style: TextStyle(fontWeight: FontWeight.bold)),
        TextSpan(text: ' i turn the dirt they throwing into riches til im filthy'),
      ]
    ),
    )

          ),


        /// Comments

      ],
    );
  }
}




