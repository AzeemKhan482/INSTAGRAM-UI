import 'package:flutter/material.dart';
import 'package:instagram/homepage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      late final String screenTypeText;

      switch (Device.screenType) {
        case ScreenType.mobile:
          screenTypeText = "My screen's type is Mobile";
          break;
        case ScreenType.tablet:
          screenTypeText = "My screen's type is Tablet";
          break;
      // ScreenType can only be desktop when `maxTabletWidth`
      // is set in `ResponsiveSizer`
        case ScreenType.desktop:
          screenTypeText = "My screen's type is Desktop";
          break;
      }
      return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
          theme: ThemeData(primarySwatch: Colors.purple)
      );
    }
    );
  }
  }

