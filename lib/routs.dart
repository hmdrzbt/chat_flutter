import 'package:flutter/cupertino.dart';
import 'package:flutter_chat/View/Pages/LoginPage.dart';

class Routs{
    Map<String,WidgetBuilder> giveRouts(){
      return routs;
    }
    Map<String, WidgetBuilder> routs = {
      LoginPage.id:(context)=>LoginPage()

    };

}