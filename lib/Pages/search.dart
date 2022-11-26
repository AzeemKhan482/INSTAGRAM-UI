import 'package:flutter/material.dart';
import 'package:instagram/util/explore_grid.dart';
class UserSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // backgroundColor: Colors.transparent,
        //elevation: 0,
        title:  ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.purple[400],
            child: Row(
              children: [
                Icon(Icons.search),
                Container(color: Colors.purple[400],
                  child: Text("Search"),
                ),],
            ),
          ),

            ),
      ),


      body:ExploreGrid(),
        ) ;


  }

}